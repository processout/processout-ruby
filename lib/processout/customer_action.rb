# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CustomerAction
    
    attr_reader :type
    attr_reader :value

    
    def type=(val)
      @type = val
    end
    
    def value=(val)
      @value = val
    end
    

    # Initializes the CustomerAction object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      @type = data.fetch(:type, "")
      @value = data.fetch(:value, "")
      
    end

    # Create a new CustomerAction using the current client
    def new(data = {})
      CustomerAction.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "value"
        self.value = data["value"]
      end
      
      self
    end

    
  end
end
