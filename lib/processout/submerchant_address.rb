# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class SubmerchantAddress
    
    attr_reader :line1
    attr_reader :line2
    attr_reader :city
    attr_reader :state
    attr_reader :country_code
    attr_reader :zip
    attr_reader :county

    
    def line1=(val)
      @line1 = val
    end
    
    def line2=(val)
      @line2 = val
    end
    
    def city=(val)
      @city = val
    end
    
    def state=(val)
      @state = val
    end
    
    def country_code=(val)
      @country_code = val
    end
    
    def zip=(val)
      @zip = val
    end
    
    def county=(val)
      @county = val
    end
    

    # Initializes the SubmerchantAddress object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.line1 = data.fetch(:line1, nil)
      self.line2 = data.fetch(:line2, nil)
      self.city = data.fetch(:city, nil)
      self.state = data.fetch(:state, nil)
      self.country_code = data.fetch(:country_code, nil)
      self.zip = data.fetch(:zip, nil)
      self.county = data.fetch(:county, nil)
      
    end

    # Create a new SubmerchantAddress using the current client
    def new(data = {})
      SubmerchantAddress.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "line1": self.line1,
          "line2": self.line2,
          "city": self.city,
          "state": self.state,
          "country_code": self.country_code,
          "zip": self.zip,
          "county": self.county,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "line1"
        self.line1 = data["line1"]
      end
      if data.include? "line2"
        self.line2 = data["line2"]
      end
      if data.include? "city"
        self.city = data["city"]
      end
      if data.include? "state"
        self.state = data["state"]
      end
      if data.include? "country_code"
        self.country_code = data["country_code"]
      end
      if data.include? "zip"
        self.zip = data["zip"]
      end
      if data.include? "county"
        self.county = data["county"]
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
      self.line1 = data.fetch(:line1, self.line1)
      self.line2 = data.fetch(:line2, self.line2)
      self.city = data.fetch(:city, self.city)
      self.state = data.fetch(:state, self.state)
      self.country_code = data.fetch(:country_code, self.country_code)
      self.zip = data.fetch(:zip, self.zip)
      self.county = data.fetch(:county, self.county)
      
      self
    end

    
  end
end
