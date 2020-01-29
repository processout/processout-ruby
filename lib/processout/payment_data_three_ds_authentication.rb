# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class PaymentDataThreeDSAuthentication
    
    attr_reader :xid

    
    def xid=(val)
      @xid = val
    end
    

    # Initializes the PaymentDataThreeDSAuthentication object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.xid = data.fetch(:xid, nil)
      
    end

    # Create a new PaymentDataThreeDSAuthentication using the current client
    def new(data = {})
      PaymentDataThreeDSAuthentication.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "XID": self.xid,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "XID"
        self.xid = data["XID"]
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
      self.xid = data.fetch(:xid, self.xid)
      
      self
    end

    
  end
end
