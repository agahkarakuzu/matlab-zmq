address = 'ipc:///tmp/rth2qmrlab';

try
    unix('rm /tmp/rth2qmrlab');
    zmq.core.disconnect(socket, address);
catch
    
end

context = zmq.core.ctx_new();
socket = zmq.core.socket(context, 'ZMQ_PUB');

zmq.core.bind(socket, address);