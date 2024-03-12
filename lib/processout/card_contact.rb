# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CardContact
    
    attr_reader :address1
    attr_reader :address2
    attr_reader :city
    attr_reader :state
    attr_reader :country_code
    attr_reader :zip

    
    def address1=(val)
      @address1 = val
    end
    
    def address2=(val)
      @address2 = val
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
    

    # Initializes the CardContact object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.address1 = data.fetch(:address1, nil)
      self.address2 = data.fetch(:address2, nil)
      self.city = data.fetch(:city, nil)
      self.state = data.fetch(:state, nil)
      self.country_code = data.fetch(:country_code, nil)
      self.zip = data.fetch(:zip, nil)
      
    end

    # Create a new CardContact using the current client
    def new(data = {})
      CardContact.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "address1": self.address1,
          "address2": self.address2,
          "city": self.city,
          "state": self.state,
          "country_code": self.country_code,
          "zip": self.zip,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "address1"
        self.address1 = data["address1"]
      end
      if data.include? "address2"
        self.address2 = data["address2"]
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
      
      self
    end

    # Prefills the object with the data passed as parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.address1 = data.fetch(:address1, self.address1)
      self.address2 = data.fetch(:address2, self.address2)
      self.city = data.fetch(:city, self.city)
      self.state = data.fetch(:state, self.state)
      self.country_code = data.fetch(:country_code, self.country_code)
      self.zip = data.fetch(:zip, self.zip)
      
      self
    end

    
  end
end
