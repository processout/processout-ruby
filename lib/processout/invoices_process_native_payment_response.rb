# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoicesProcessNativePaymentResponse
    
    attr_reader :transaction
    attr_reader :native_apm

    
    def transaction=(val)
      if val.nil?
        @transaction = val
        return
      end

      if val.instance_of? Transaction
        @transaction = val
      else
        obj = Transaction.new(@client)
        obj.fill_with_data(val)
        @transaction = obj
      end
      
    end
    
    def native_apm=(val)
      if val.nil?
        @native_apm = val
        return
      end

      if val.instance_of? NativeAPMResponse
        @native_apm = val
      else
        obj = NativeAPMResponse.new(@client)
        obj.fill_with_data(val)
        @native_apm = obj
      end
      
    end
    

    # Initializes the InvoicesProcessNativePaymentResponse object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.transaction = data.fetch(:transaction, nil)
      self.native_apm = data.fetch(:native_apm, nil)
      
    end

    # Create a new InvoicesProcessNativePaymentResponse using the current client
    def new(data = {})
      InvoicesProcessNativePaymentResponse.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "transaction": self.transaction,
          "native_apm": self.native_apm,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "transaction"
        self.transaction = data["transaction"]
      end
      if data.include? "native_apm"
        self.native_apm = data["native_apm"]
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
      self.transaction = data.fetch(:transaction, self.transaction)
      self.native_apm = data.fetch(:native_apm, self.native_apm)
      
      self
    end

    
  end
end
