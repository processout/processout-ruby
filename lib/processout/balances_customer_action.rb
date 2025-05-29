# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class BalancesCustomerAction
    
    attr_reader :type
    attr_reader :value

    
    def type=(val)
      @type = val
    end
    
    def value=(val)
      @value = val
    end
    

    # Initializes the BalancesCustomerAction object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.type = data.fetch(:type, nil)
      self.value = data.fetch(:value, nil)
      
    end

    # Create a new BalancesCustomerAction using the current client
    def new(data = {})
      BalancesCustomerAction.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "type": self.type,
          "value": self.value,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "value"
        self.value = data["value"]
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
      self.type = data.fetch(:type, self.type)
      self.value = data.fetch(:value, self.value)
      
      self
    end

    
  end
end
