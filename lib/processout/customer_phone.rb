# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CustomerPhone
    
    attr_reader :number
    attr_reader :dialing_code

    
    def number=(val)
      @number = val
    end
    
    def dialing_code=(val)
      @dialing_code = val
    end
    

    # Initializes the CustomerPhone object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.number = data.fetch(:number, nil)
      self.dialing_code = data.fetch(:dialing_code, nil)
      
    end

    # Create a new CustomerPhone using the current client
    def new(data = {})
      CustomerPhone.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "number": self.number,
          "dialing_code": self.dialing_code,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "number"
        self.number = data["number"]
      end
      if data.include? "dialing_code"
        self.dialing_code = data["dialing_code"]
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
      self.number = data.fetch(:number, self.number)
      self.dialing_code = data.fetch(:dialing_code, self.dialing_code)
      
      self
    end

    
  end
end
