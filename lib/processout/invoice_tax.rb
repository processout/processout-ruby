# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoiceTax
    
    attr_reader :amount
    attr_reader :rate

    
    def amount=(val)
      @amount = val
    end
    
    def rate=(val)
      @rate = val
    end
    

    # Initializes the InvoiceTax object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.amount = data.fetch(:amount, nil)
      self.rate = data.fetch(:rate, nil)
      
    end

    # Create a new InvoiceTax using the current client
    def new(data = {})
      InvoiceTax.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "amount": self.amount,
          "rate": self.rate,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "rate"
        self.rate = data["rate"]
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
      self.amount = data.fetch(:amount, self.amount)
      self.rate = data.fetch(:rate, self.rate)
      
      self
    end

    
  end
end
