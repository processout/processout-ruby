# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class NativeAPMResponse
    
    attr_reader :state
    attr_reader :parameter_definitions
    attr_reader :parameter_values

    
    def state=(val)
      @state = val
    end
    
    def parameter_definitions=(val)
      if val.nil?
        @parameter_definitions = []
        return
      end

      if val.length > 0 and val[0].instance_of? NativeAPMParameterDefinition
        @parameter_definitions = val
      else
        l = Array.new
        for v in val
          obj = NativeAPMParameterDefinition.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @parameter_definitions = l
      end
      
    end
    
    def parameter_values=(val)
      if val.nil?
        @parameter_values = []
        return
      end

      if val.length > 0 and val[0].instance_of? NativeAPMParameterValue
        @parameter_values = val
      else
        l = Array.new
        for v in val
          obj = NativeAPMParameterValue.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @parameter_values = l
      end
      
    end
    

    # Initializes the NativeAPMResponse object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.state = data.fetch(:state, nil)
      self.parameter_definitions = data.fetch(:parameter_definitions, nil)
      self.parameter_values = data.fetch(:parameter_values, nil)
      
    end

    # Create a new NativeAPMResponse using the current client
    def new(data = {})
      NativeAPMResponse.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "state": self.state,
          "parameter_definitions": self.parameter_definitions,
          "parameter_values": self.parameter_values,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "state"
        self.state = data["state"]
      end
      if data.include? "parameter_definitions"
        self.parameter_definitions = data["parameter_definitions"]
      end
      if data.include? "parameter_values"
        self.parameter_values = data["parameter_values"]
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
      self.state = data.fetch(:state, self.state)
      self.parameter_definitions = data.fetch(:parameter_definitions, self.parameter_definitions)
      self.parameter_values = data.fetch(:parameter_values, self.parameter_values)
      
      self
    end

    
  end
end
