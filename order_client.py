import asyncio
import websockets
import json
import uuid

from aiortc import RTCPeerConnection, RTCSessionDescription, RTCIceCandidate
from aiortc.contrib.signaling import BYE

class OrderClient:
    def __init__(self):
        self.pc = RTCPeerConnection()
        self.ws = None  # WebSocket connection
        self.id = 'orderclient'  # Unique ID for this client
        self.target_id = None  # Will be set to the ros_client's ID

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
        self.target_id = 'rosclient'  # Assuming the ros_client uses this ID

        # Create DataChannel
        channel = self.pc.createDataChannel('data')

        @channel.on("open")
        def on_open():
            print("DataChannel opened")
            # Send data periodically
            asyncio.create_task(self.send_data(channel))

        @channel.on("message")
        def on_message(message):
            print(f"Received message: {message}")

        # Handle incoming messages from the signaling server
        asyncio.create_task(self.receive_signaling())

        # Create an offer and set local description
        await self.pc.setLocalDescription(await self.pc.createOffer())

        # Send the offer to the signaling server
        await self.ws.send(json.dumps({
            'id': self.id,
            'target': self.target_id,
            'type': 'offer',
            'sdp': self.pc.localDescription.sdp
        }))

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

    async def send_data(self, channel):
        while True:
            # Send test data
            message = {
                'message': 'Hello from order-client'
            }
            channel.send(json.dumps(message))
            await asyncio.sleep(1)  # Send data every 1 second

async def main():
    client = OrderClient()
    await client.setup_connection()

if __name__ == '__main__':
    asyncio.run(main())
