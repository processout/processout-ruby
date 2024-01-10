# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class NativeAPMParameterValue
    
    attr_reader :key
    attr_reader :value

    
    def key=(val)
      @key = val
    end
    
    def value=(val)
      @value = val
    end
    

    # Initializes the NativeAPMParameterValue object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.key = data.fetch(:key, nil)
      self.value = data.fetch(:value, nil)
      
    end

    # Create a new NativeAPMParameterValue using the current client
    def new(data = {})
      NativeAPMParameterValue.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "key": self.key,
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
      if data.include? "key"
        self.key = data["key"]
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
      self.key = data.fetch(:key, self.key)
      self.value = data.fetch(:value, self.value)
      
      self
    end

    
  end
end
