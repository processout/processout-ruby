# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoicesCaptureResponse
    
    attr_reader :transaction
    attr_reader :customer_action

    
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
    
    def customer_action=(val)
      if val.nil?
        @customer_action = val
        return
      end

      if val.instance_of? CustomerAction
        @customer_action = val
      else
        obj = CustomerAction.new(@client)
        obj.fill_with_data(val)
        @customer_action = obj
      end
      
    end
    

    # Initializes the InvoicesCaptureResponse object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.transaction = data.fetch(:transaction, nil)
      self.customer_action = data.fetch(:customer_action, nil)
      
    end

    # Create a new InvoicesCaptureResponse using the current client
    def new(data = {})
      InvoicesCaptureResponse.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "transaction": self.transaction,
          "customer_action": self.customer_action,
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
      if data.include? "customer_action"
        self.customer_action = data["customer_action"]
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
      self.customer_action = data.fetch(:customer_action, self.customer_action)
      
      self
    end

    
  end
end
