# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class PaymentDataNetworkAuthentication
    
    attr_reader :cavv

    
    def cavv=(val)
      @cavv = val
    end
    

    # Initializes the PaymentDataNetworkAuthentication object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.cavv = data.fetch(:cavv, nil)
      
    end

    # Create a new PaymentDataNetworkAuthentication using the current client
    def new(data = {})
      PaymentDataNetworkAuthentication.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "cavv": self.cavv,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "cavv"
        self.cavv = data["cavv"]
      end
      
      self
    end

    # Prefills the object with the data passed as parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.cavv = data.fetch(:cavv, self.cavv)
      
      self
    end

    
  end
end
