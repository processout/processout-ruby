# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class NativeAPMTransactionDetailsInvoice
    
    attr_reader :amount
    attr_reader :currency_code

    
    def amount=(val)
      @amount = val
    end
    
    def currency_code=(val)
      @currency_code = val
    end
    

    # Initializes the NativeAPMTransactionDetailsInvoice object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.amount = data.fetch(:amount, nil)
      self.currency_code = data.fetch(:currency_code, nil)
      
    end

    # Create a new NativeAPMTransactionDetailsInvoice using the current client
    def new(data = {})
      NativeAPMTransactionDetailsInvoice.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "amount": self.amount,
          "currency_code": self.currency_code,
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
      if data.include? "currency_code"
        self.currency_code = data["currency_code"]
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
      self.currency_code = data.fetch(:currency_code, self.currency_code)
      
      self
    end

    
  end
end
