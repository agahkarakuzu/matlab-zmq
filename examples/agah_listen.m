
context = zmq.core.ctx_new();
% Subscribe.
socket = zmq.core.socket(context, 'ZMQ_SUB');

% Unix-domain socket address. 
address = 'ipc:///tmp/rth2qmrlab';

zmq.core.connect(socket, address);
zmq.core.setsockopt(socket, 'ZMQ_SUBSCRIBE', 'Say');

message = [];
while (numel(message)==0)

    message = char(zmq.core.recv(socket));

end

