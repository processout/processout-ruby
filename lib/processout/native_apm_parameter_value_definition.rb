# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class NativeAPMParameterValueDefinition
    
    attr_reader :value
    attr_reader :default
    attr_reader :display_name

    
    def value=(val)
      @value = val
    end
    
    def default=(val)
      @default = val
    end
    
    def display_name=(val)
      @display_name = val
    end
    

    # Initializes the NativeAPMParameterValueDefinition object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.value = data.fetch(:value, nil)
      self.default = data.fetch(:default, nil)
      self.display_name = data.fetch(:display_name, nil)
      
    end

    # Create a new NativeAPMParameterValueDefinition using the current client
    def new(data = {})
      NativeAPMParameterValueDefinition.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "value": self.value,
          "default": self.default,
          "display_name": self.display_name,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "value"
        self.value = data["value"]
      end
      if data.include? "default"
        self.default = data["default"]
      end
      if data.include? "display_name"
        self.display_name = data["display_name"]
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
      self.value = data.fetch(:value, self.value)
      self.default = data.fetch(:default, self.default)
      self.display_name = data.fetch(:display_name, self.display_name)
      
      self
    end

    
  end
end
