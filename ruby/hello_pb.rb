# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: hello.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("hello.proto", :syntax => :proto3) do
    add_message "HelloRequest" do
      optional :name, :string, 1
    end
    add_message "HelloResponse" do
      optional :name, :string, 1
    end
  end
end

HelloRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("HelloRequest").msgclass
HelloResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("HelloResponse").msgclass
