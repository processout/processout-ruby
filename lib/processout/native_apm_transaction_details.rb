# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class NativeAPMTransactionDetails
    
    attr_reader :gateway
    attr_reader :invoice
    attr_reader :parameters
    attr_reader :state

    
    def gateway=(val)
      if val.nil?
        @gateway = val
        return
      end

      if val.instance_of? NativeAPMTransactionDetailsGateway
        @gateway = val
      else
        obj = NativeAPMTransactionDetailsGateway.new(@client)
        obj.fill_with_data(val)
        @gateway = obj
      end
      
    end
    
    def invoice=(val)
      if val.nil?
        @invoice = val
        return
      end

      if val.instance_of? NativeAPMTransactionDetailsInvoice
        @invoice = val
      else
        obj = NativeAPMTransactionDetailsInvoice.new(@client)
        obj.fill_with_data(val)
        @invoice = obj
      end
      
    end
    
    def parameters=(val)
      if val.nil?
        @parameters = []
        return
      end

      if val.length > 0 and val[0].instance_of? NativeAPMParameterDefinition
        @parameters = val
      else
        l = Array.new
        for v in val
          obj = NativeAPMParameterDefinition.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @parameters = l
      end
      
    end
    
    def state=(val)
      @state = val
    end
    

    # Initializes the NativeAPMTransactionDetails object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.gateway = data.fetch(:gateway, nil)
      self.invoice = data.fetch(:invoice, nil)
      self.parameters = data.fetch(:parameters, nil)
      self.state = data.fetch(:state, nil)
      
    end

    # Create a new NativeAPMTransactionDetails using the current client
    def new(data = {})
      NativeAPMTransactionDetails.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "gateway": self.gateway,
          "invoice": self.invoice,
          "parameters": self.parameters,
          "state": self.state,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "gateway"
        self.gateway = data["gateway"]
      end
      if data.include? "invoice"
        self.invoice = data["invoice"]
      end
      if data.include? "parameters"
        self.parameters = data["parameters"]
      end
      if data.include? "state"
        self.state = data["state"]
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
      self.gateway = data.fetch(:gateway, self.gateway)
      self.invoice = data.fetch(:invoice, self.invoice)
      self.parameters = data.fetch(:parameters, self.parameters)
      self.state = data.fetch(:state, self.state)
      
      self
    end

    
  end
end
