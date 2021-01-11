$LOAD_PATH.unshift(File.expand_path('..', __FILE__))
require 'grpc'
require 'hello_services_pb'
require 'hello_pb'
stub = NameService::Stub.new('localhost:50051', :this_channel_is_insecure)
message = stub.say_hello(HelloRequest.new(name: "world"))
m = stub.say_wll(HelloRequest.new)
puts message.name
puts m.name
