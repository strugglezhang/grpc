$LOAD_PATH.unshift(File.expand_path('..', __FILE__))

require 'grpc'
require 'hello_services_pb'

class GreeterServer < NameService::Service
    def say_hello(hello_req, _unused_call)
        HelloResponse.new(name: "Hello #{hello_req.name}")
    end

    def say_wll(hello_req, _unused_call)
        WllResponse.new(name: "臭狗屎")
    end
end

s = GRPC::RpcServer.new
s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
s.handle(GreeterServer)
s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])

