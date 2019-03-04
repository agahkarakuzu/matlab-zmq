
context = zmq.core.ctx_new();
socket = zmq.core.socket(context, 'ZMQ_PUB');

address = 'ipc:///tmp/rth2qmrlab';
zmq.core.bind(socket, address);

message = 'Say something already!!!!';

zmq.core.send(socket, uint8(message));

