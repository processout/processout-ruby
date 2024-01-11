# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ErrorCodes
    
    attr_reader :gateway

    
    def gateway=(val)
      if val.nil?
        @gateway = val
        return
      end

      if val.instance_of? CategoryErrorCodes
        @gateway = val
      else
        obj = CategoryErrorCodes.new(@client)
        obj.fill_with_data(val)
        @gateway = obj
      end
      
    end
    

    # Initializes the ErrorCodes object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.gateway = data.fetch(:gateway, nil)
      
    end

    # Create a new ErrorCodes using the current client
    def new(data = {})
      ErrorCodes.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "gateway": self.gateway,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "gateway"
        self.gateway = data["gateway"]
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
      self.gateway = data.fetch(:gateway, self.gateway)
      
      self
    end

    # Get all error codes.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/error-codes"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      
      obj = ErrorCodes.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
