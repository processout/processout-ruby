# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class PayoutItemAmountBreakdowns
    
    attr_reader :scheme_fee
    attr_reader :interchange_fee
    attr_reader :gateway_fee
    attr_reader :markup_fee
    attr_reader :acquirer_fee
    attr_reader :other_fee

    
    def scheme_fee=(val)
      @scheme_fee = val
    end
    
    def interchange_fee=(val)
      @interchange_fee = val
    end
    
    def gateway_fee=(val)
      @gateway_fee = val
    end
    
    def markup_fee=(val)
      @markup_fee = val
    end
    
    def acquirer_fee=(val)
      @acquirer_fee = val
    end
    
    def other_fee=(val)
      @other_fee = val
    end
    

    # Initializes the PayoutItemAmountBreakdowns object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.scheme_fee = data.fetch(:scheme_fee, nil)
      self.interchange_fee = data.fetch(:interchange_fee, nil)
      self.gateway_fee = data.fetch(:gateway_fee, nil)
      self.markup_fee = data.fetch(:markup_fee, nil)
      self.acquirer_fee = data.fetch(:acquirer_fee, nil)
      self.other_fee = data.fetch(:other_fee, nil)
      
    end

    # Create a new PayoutItemAmountBreakdowns using the current client
    def new(data = {})
      PayoutItemAmountBreakdowns.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "scheme_fee": self.scheme_fee,
          "interchange_fee": self.interchange_fee,
          "gateway_fee": self.gateway_fee,
          "markup_fee": self.markup_fee,
          "acquirer_fee": self.acquirer_fee,
          "other_fee": self.other_fee,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "scheme_fee"
        self.scheme_fee = data["scheme_fee"]
      end
      if data.include? "interchange_fee"
        self.interchange_fee = data["interchange_fee"]
      end
      if data.include? "gateway_fee"
        self.gateway_fee = data["gateway_fee"]
      end
      if data.include? "markup_fee"
        self.markup_fee = data["markup_fee"]
      end
      if data.include? "acquirer_fee"
        self.acquirer_fee = data["acquirer_fee"]
      end
      if data.include? "other_fee"
        self.other_fee = data["other_fee"]
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
      self.scheme_fee = data.fetch(:scheme_fee, self.scheme_fee)
      self.interchange_fee = data.fetch(:interchange_fee, self.interchange_fee)
      self.gateway_fee = data.fetch(:gateway_fee, self.gateway_fee)
      self.markup_fee = data.fetch(:markup_fee, self.markup_fee)
      self.acquirer_fee = data.fetch(:acquirer_fee, self.acquirer_fee)
      self.other_fee = data.fetch(:other_fee, self.other_fee)
      
      self
    end

    
  end
end
