require 'grpc'
require 'hello_pb'

module NameService
  class Service

    include GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'NameService'

    rpc :sayHello, ::HelloRequest, ::HelloResponse
  end

  Stub = Service.rpc_stub_class
end