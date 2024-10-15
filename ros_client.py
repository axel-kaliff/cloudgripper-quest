import asyncio
import rclpy
from rclpy.node import Node

from aiortc import RTCPeerConnection, RTCSessionDescription, RTCIceCandidate
from aiortc.contrib.signaling import BYE

from msg import OVR2ROSInputs, OVR2ROSHapticFeedback
from geometry_msgs.msg import Twist

import websockets
import json
import uuid

class WebCommunication:
    def __init__(self, ros_handler):
        self.ros_handler = ros_handler
        self.pc = RTCPeerConnection()
        self.ws = None  # WebSocket connection
        self.id = 'rosclient'  # Unique ID for this client
        self.target_id = 'orderclient'  # Target client's ID


    async def setup_connection(self):
        # Connect to the signaling server
        try:
            self.ws = await websockets.connect('ws://localhost:12345')
        except Exception as e:
            print(f"Failed to connect to signaling server: {e}")
            return

        # Send 'join' message with our ID
        await self.ws.send(json.dumps({'type': 'join', 'id': self.id}))

        # Wait for the target ID (could be passed as an argument or hardcoded for this example)
        self.target_id = 'orderclient'  # Assuming the order-client uses this ID

        # Handle incoming messages from the signaling server
        asyncio.create_task(self.receive_signaling())

        # Create DataChannel
        @self.pc.on("datachannel")
        def on_datachannel(channel):
            @channel.on("message")
            def on_message(message):
                # Process the message using ROSHandler
                self.ros_handler.process_data(message)

        # Wait for offer from the order-client
        # (In this setup, the order-client will act as the offerer)
        print("Waiting for offer...")
        # The offer will be handled in receive_signaling()

        # Keep the connection open
        await self.pc.wait_closed()

    async def receive_signaling(self):
        async for message in self.ws:
            data = json.loads(message)

            if data.get('target') != self.id:
                continue  # Ignore messages not intended for us

            if 'sdp' in data:
                sdp = data['sdp']
                type = data['type']
                desc = RTCSessionDescription(sdp=sdp, type=type)
                await self.pc.setRemoteDescription(desc)

                if type == 'offer':
                    # Create an answer
                    await self.pc.setLocalDescription(await self.pc.createAnswer())
                    # Send the answer back
                    await self.ws.send(json.dumps({
                        'id': self.id,
                        'target': data['id'],
                        'type': 'answer',
                        'sdp': self.pc.localDescription.sdp
                    }))
            elif 'candidate' in data:
                candidate = data['candidate']
                sdpMid = data.get('sdpMid')
                sdpMLineIndex = data.get('sdpMLineIndex')
                ice_candidate = RTCIceCandidate(
                    sdpMid=sdpMid,
                    sdpMLineIndex=sdpMLineIndex,
                    candidate=candidate
                )
                await self.pc.addIceCandidate(ice_candidate)
            elif data == BYE:
                print("Exiting")
                await self.ws.close()
                break

    @pc.on('icecandidate')
    async def on_icecandidate(candidate):
        if candidate:
            await self.ws.send(json.dumps({
                'id': self.id,
                'target': self.target_id,
                'candidate': candidate.sdp,
                'sdpMid': candidate.sdpMid,
                'sdpMLineIndex': candidate.sdpMLineIndex
            }))


class ROSHandler(Node):
    def __init__(self):
        super().__init__('quest2rosdemo')

        # Publishers
        self.ros2ovr_right_hand_haptic_feedback_pub = self.create_publisher(
            OVR2ROSHapticFeedback,
            "/q2r_right_hand_haptic_feedback",
            10)
        self.ros2ovr_left_hand_haptic_feedback_pub = self.create_publisher(
            OVR2ROSHapticFeedback,
            "/q2r_left_hand_haptic_feedback",
            10)
        self.ros2ovr_dice_twist_pub = self.create_publisher(
            Twist,
            "/dice_twist",
            10)
        self.ros2ovr_q2r_twist_pub = self.create_publisher(
            Twist,
            "/q2r_twist",
            10)

    def process_data(self, data):
        # Process the data received via aiortc
        message = message_pb2.ROSMessage()
        try:
            message.ParseFromString(data)
        except Exception as e:
            self.get_logger().error(f"Failed to parse protobuf message: {e}")
            return

        # Process right hand data
        if message.HasField('right_hand_twist') and message.HasField('right_hand_inputs'):
            right_hand_twist = self.parse_twist(message.right_hand_twist)
            right_hand_inputs = self.parse_inputs(message.right_hand_inputs)

            # If the lower button is pressed, send the twist back to move the q2r; else send zero
            q2r_twist = Twist()
            if right_hand_inputs.button_lower:
                q2r_twist = right_hand_twist
            self.ros2ovr_q2r_twist_pub.publish(q2r_twist)

            # Send triggers as frequency and amplitude of vibration back to the quest
            right_hand_haptic_feedback = OVR2ROSHapticFeedback()
            right_hand_haptic_feedback.frequency = right_hand_inputs.press_index
            right_hand_haptic_feedback.amplitude = right_hand_inputs.press_middle
            self.ros2ovr_right_hand_haptic_feedback_pub.publish(
                right_hand_haptic_feedback)

        # Process left hand data
        if message.HasField('left_hand_twist') and message.HasField('left_hand_inputs'):
            left_hand_twist = self.parse_twist(message.left_hand_twist)
            left_hand_inputs = self.parse_inputs(message.left_hand_inputs)

            # If the lower button is pressed, send the twist back to move the dice; else send zero
            dice_twist = Twist()
            if left_hand_inputs.button_lower:
                dice_twist = left_hand_twist
            self.ros2ovr_dice_twist_pub.publish(dice_twist)

            # Send triggers as frequency and amplitude of vibration back to the quest
            left_hand_haptic_feedback = OVR2ROSHapticFeedback()
            left_hand_haptic_feedback.frequency = left_hand_inputs.press_index
            left_hand_haptic_feedback.amplitude = left_hand_inputs.press_middle
            self.ros2ovr_left_hand_haptic_feedback_pub.publish(
                left_hand_haptic_feedback)

    def parse_twist(self, data):
        # Convert received data to a Twist message
        twist = Twist()
        twist.linear.x = data.linear_x
        twist.linear.y = data.linear_y
        twist.linear.z = data.linear_z
        twist.angular.x = data.angular_x
        twist.angular.y = data.angular_y
        twist.angular.z = data.angular_z
        return twist

    def parse_inputs(self, data):
        # Convert received data to an OVR2ROSInputs message
        inputs = OVR2ROSInputs()
        inputs.button_lower = data.button_lower
        inputs.press_index = data.press_index
        inputs.press_middle = data.press_middle
        return inputs


async def main(args=None):
    rclpy.init(args=args)
    ros_handler = ROSHandler()
    web_communication = WebCommunication(ros_handler)

    aiortc_task = asyncio.create_task(web_communication.setup_connection())

    try:
        while rclpy.ok():
            rclpy.spin_once(ros_handler, timeout_sec=0)
            await asyncio.sleep(0.01)
    except KeyboardInterrupt:
        pass
    finally:
        await web_communication.ws.close()
        ros_handler.destroy_node()
        rclpy.shutdown()
        aiortc_task.cancel()
        try:
            await aiortc_task
        except asyncio.CancelledError:
            pass

if __name__ == '__main__':
    asyncio.run(main())