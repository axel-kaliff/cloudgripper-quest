// signaling-server.js
const WebSocket = require('ws');

const wss = new WebSocket.Server({ port: 12345 });

let peers = {};

wss.on('connection', function connection(ws) {
  ws.on('message', function incoming(message) {
    let data = JSON.parse(message);

    if (data.type === 'join') {
      // Each client sends a 'join' message with a unique ID
      peers[data.id] = ws;
      ws.id = data.id;
      console.log(`Client ${data.id} joined`);
    } else {
      // Relay messages to the other peer
      let targetId = data.target;
      if (peers[targetId] && peers[targetId].readyState === WebSocket.OPEN) {
        peers[targetId].send(message);
      } else {
        console.log(`Target ${targetId} not found`);
      }
    }
  });

  ws.on('close', () => {
    delete peers[ws.id];
    console.log(`Client ${ws.id} disconnected`);
  });
});

console.log('Signaling server is running on ws://localhost:12345');
