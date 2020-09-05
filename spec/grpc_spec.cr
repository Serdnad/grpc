require "./spec_helper"
require "./server"

describe GRPC do

  it "server + client example works" do

    sleep 2
    
    service = HelloWorld::Stub.new("localhost", 50000)
    response = service.method_name(TheRequest.new(text: "foo"))

    response.data.should eq("Hello foo")

    puts "DATA: #{response.data}"

    # sleep 30
  end
end
