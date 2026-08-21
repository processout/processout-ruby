# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CardSchemeDetails
    
    attr_reader :transaction_id
    attr_reader :transaction_link_id

    
    def transaction_id=(val)
      @transaction_id = val
    end
    
    def transaction_link_id=(val)
      @transaction_link_id = val
    end
    

    # Initializes the CardSchemeDetails object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.transaction_id = data.fetch(:transaction_id, nil)
      self.transaction_link_id = data.fetch(:transaction_link_id, nil)
      
    end

    # Create a new CardSchemeDetails using the current client
    def new(data = {})
      CardSchemeDetails.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "transaction_id": self.transaction_id,
          "transaction_link_id": self.transaction_link_id,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "transaction_id"
        self.transaction_id = data["transaction_id"]
      end
      if data.include? "transaction_link_id"
        self.transaction_link_id = data["transaction_link_id"]
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
      self.transaction_id = data.fetch(:transaction_id, self.transaction_id)
      self.transaction_link_id = data.fetch(:transaction_link_id, self.transaction_link_id)
      
      self
    end

    
  end
end
