# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Balance
    
    attr_reader :amount
    attr_reader :currency
    attr_reader :expiry

    
    def amount=(val)
      @amount = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def expiry=(val)
      @expiry = val
    end
    

    # Initializes the Balance object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.amount = data.fetch(:amount, nil)
      self.currency = data.fetch(:currency, nil)
      self.expiry = data.fetch(:expiry, nil)
      
    end

    # Create a new Balance using the current client
    def new(data = {})
      Balance.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "amount": self.amount,
          "currency": self.currency,
          "expiry": self.expiry,
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
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "expiry"
        self.expiry = data["expiry"]
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
      self.currency = data.fetch(:currency, self.currency)
      self.expiry = data.fetch(:expiry, self.expiry)
      
      self
    end

    
  end
end
