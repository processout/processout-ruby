# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoiceExternalFraudTools
    
    attr_reader :forter

    
    def forter=(val)
      @forter = val
    end
    

    # Initializes the InvoiceExternalFraudTools object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.forter = data.fetch(:forter, nil)
      
    end

    # Create a new InvoiceExternalFraudTools using the current client
    def new(data = {})
      InvoiceExternalFraudTools.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "forter": self.forter,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "forter"
        self.forter = data["forter"]
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
      self.forter = data.fetch(:forter, self.forter)
      
      self
    end

    
  end
end
