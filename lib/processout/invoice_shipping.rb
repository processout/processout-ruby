# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoiceShipping
    
    attr_reader :amount
    attr_reader :method
    attr_reader :provider
    attr_reader :delay
    attr_reader :address1
    attr_reader :address2
    attr_reader :city
    attr_reader :state
    attr_reader :country_code
    attr_reader :zip
    attr_reader :phone_number
    attr_reader :expects_shipping_at
    attr_reader :relay_store_name

    
    def amount=(val)
      @amount = val
    end
    
    def method=(val)
      @method = val
    end
    
    def provider=(val)
      @provider = val
    end
    
    def delay=(val)
      @delay = val
    end
    
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
    
    def phone_number=(val)
      @phone_number = val
    end
    
    def expects_shipping_at=(val)
      @expects_shipping_at = val
    end
    
    def relay_store_name=(val)
      @relay_store_name = val
    end
    

    # Initializes the InvoiceShipping object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.amount = data.fetch(:amount, nil)
      self.method = data.fetch(:method, nil)
      self.provider = data.fetch(:provider, nil)
      self.delay = data.fetch(:delay, nil)
      self.address1 = data.fetch(:address1, nil)
      self.address2 = data.fetch(:address2, nil)
      self.city = data.fetch(:city, nil)
      self.state = data.fetch(:state, nil)
      self.country_code = data.fetch(:country_code, nil)
      self.zip = data.fetch(:zip, nil)
      self.phone_number = data.fetch(:phone_number, nil)
      self.expects_shipping_at = data.fetch(:expects_shipping_at, nil)
      self.relay_store_name = data.fetch(:relay_store_name, nil)
      
    end

    # Create a new InvoiceShipping using the current client
    def new(data = {})
      InvoiceShipping.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "amount": self.amount,
          "method": self.method,
          "provider": self.provider,
          "delay": self.delay,
          "address1": self.address1,
          "address2": self.address2,
          "city": self.city,
          "state": self.state,
          "country_code": self.country_code,
          "zip": self.zip,
          "phone_number": self.phone_number,
          "expects_shipping_at": self.expects_shipping_at,
          "relay_store_name": self.relay_store_name,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "method"
        self.method = data["method"]
      end
      if data.include? "provider"
        self.provider = data["provider"]
      end
      if data.include? "delay"
        self.delay = data["delay"]
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
      if data.include? "phone_number"
        self.phone_number = data["phone_number"]
      end
      if data.include? "expects_shipping_at"
        self.expects_shipping_at = data["expects_shipping_at"]
      end
      if data.include? "relay_store_name"
        self.relay_store_name = data["relay_store_name"]
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
      self.amount = data.fetch(:amount, self.amount)
      self.method = data.fetch(:method, self.method)
      self.provider = data.fetch(:provider, self.provider)
      self.delay = data.fetch(:delay, self.delay)
      self.address1 = data.fetch(:address1, self.address1)
      self.address2 = data.fetch(:address2, self.address2)
      self.city = data.fetch(:city, self.city)
      self.state = data.fetch(:state, self.state)
      self.country_code = data.fetch(:country_code, self.country_code)
      self.zip = data.fetch(:zip, self.zip)
      self.phone_number = data.fetch(:phone_number, self.phone_number)
      self.expects_shipping_at = data.fetch(:expects_shipping_at, self.expects_shipping_at)
      self.relay_store_name = data.fetch(:relay_store_name, self.relay_store_name)
      
      self
    end

    
  end
end
