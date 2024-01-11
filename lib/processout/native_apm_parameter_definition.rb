# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class NativeAPMParameterDefinition
    
    attr_reader :key
    attr_reader :type
    attr_reader :required
    attr_reader :length
    attr_reader :display_name
    attr_reader :available_values

    
    def key=(val)
      @key = val
    end
    
    def type=(val)
      @type = val
    end
    
    def required=(val)
      @required = val
    end
    
    def length=(val)
      @length = val
    end
    
    def display_name=(val)
      @display_name = val
    end
    
    def available_values=(val)
      if val.nil?
        @available_values = []
        return
      end

      if val.length > 0 and val[0].instance_of? NativeAPMParameterValueDefinition
        @available_values = val
      else
        l = Array.new
        for v in val
          obj = NativeAPMParameterValueDefinition.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @available_values = l
      end
      
    end
    

    # Initializes the NativeAPMParameterDefinition object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.key = data.fetch(:key, nil)
      self.type = data.fetch(:type, nil)
      self.required = data.fetch(:required, nil)
      self.length = data.fetch(:length, nil)
      self.display_name = data.fetch(:display_name, nil)
      self.available_values = data.fetch(:available_values, nil)
      
    end

    # Create a new NativeAPMParameterDefinition using the current client
    def new(data = {})
      NativeAPMParameterDefinition.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "key": self.key,
          "type": self.type,
          "required": self.required,
          "length": self.length,
          "display_name": self.display_name,
          "available_values": self.available_values,
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
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "required"
        self.required = data["required"]
      end
      if data.include? "length"
        self.length = data["length"]
      end
      if data.include? "display_name"
        self.display_name = data["display_name"]
      end
      if data.include? "available_values"
        self.available_values = data["available_values"]
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
      self.type = data.fetch(:type, self.type)
      self.required = data.fetch(:required, self.required)
      self.length = data.fetch(:length, self.length)
      self.display_name = data.fetch(:display_name, self.display_name)
      self.available_values = data.fetch(:available_values, self.available_values)
      
      self
    end

    
  end
end
