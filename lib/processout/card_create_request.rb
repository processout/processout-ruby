# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CardCreateRequest
    
    attr_reader :device
    attr_reader :name
    attr_reader :number
    attr_reader :exp_day
    attr_reader :exp_month
    attr_reader :exp_year
    attr_reader :cvc2
    attr_reader :preferred_scheme
    attr_reader :metadata
    attr_reader :token_type
    attr_reader :eci
    attr_reader :cryptogram
    attr_reader :applepay_response
    attr_reader :applepay_mid
    attr_reader :payment_token
    attr_reader :contact
    attr_reader :shipping

    
    def device=(val)
      if val.nil?
        @device = val
        return
      end

      if val.instance_of? Device
        @device = val
      else
        obj = Device.new(@client)
        obj.fill_with_data(val)
        @device = obj
      end
      
    end
    
    def name=(val)
      @name = val
    end
    
    def number=(val)
      @number = val
    end
    
    def exp_day=(val)
      @exp_day = val
    end
    
    def exp_month=(val)
      @exp_month = val
    end
    
    def exp_year=(val)
      @exp_year = val
    end
    
    def cvc2=(val)
      @cvc2 = val
    end
    
    def preferred_scheme=(val)
      @preferred_scheme = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def token_type=(val)
      @token_type = val
    end
    
    def eci=(val)
      @eci = val
    end
    
    def cryptogram=(val)
      @cryptogram = val
    end
    
    def applepay_response=(val)
      @applepay_response = val
    end
    
    def applepay_mid=(val)
      @applepay_mid = val
    end
    
    def payment_token=(val)
      @payment_token = val
    end
    
    def contact=(val)
      if val.nil?
        @contact = val
        return
      end

      if val.instance_of? CardContact
        @contact = val
      else
        obj = CardContact.new(@client)
        obj.fill_with_data(val)
        @contact = obj
      end
      
    end
    
    def shipping=(val)
      if val.nil?
        @shipping = val
        return
      end

      if val.instance_of? CardShipping
        @shipping = val
      else
        obj = CardShipping.new(@client)
        obj.fill_with_data(val)
        @shipping = obj
      end
      
    end
    

    # Initializes the CardCreateRequest object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.device = data.fetch(:device, nil)
      self.name = data.fetch(:name, nil)
      self.number = data.fetch(:number, nil)
      self.exp_day = data.fetch(:exp_day, nil)
      self.exp_month = data.fetch(:exp_month, nil)
      self.exp_year = data.fetch(:exp_year, nil)
      self.cvc2 = data.fetch(:cvc2, nil)
      self.preferred_scheme = data.fetch(:preferred_scheme, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.token_type = data.fetch(:token_type, nil)
      self.eci = data.fetch(:eci, nil)
      self.cryptogram = data.fetch(:cryptogram, nil)
      self.applepay_response = data.fetch(:applepay_response, nil)
      self.applepay_mid = data.fetch(:applepay_mid, nil)
      self.payment_token = data.fetch(:payment_token, nil)
      self.contact = data.fetch(:contact, nil)
      self.shipping = data.fetch(:shipping, nil)
      
    end

    # Create a new CardCreateRequest using the current client
    def new(data = {})
      CardCreateRequest.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "device": self.device,
          "name": self.name,
          "number": self.number,
          "exp_day": self.exp_day,
          "exp_month": self.exp_month,
          "exp_year": self.exp_year,
          "cvc2": self.cvc2,
          "preferred_scheme": self.preferred_scheme,
          "metadata": self.metadata,
          "token_type": self.token_type,
          "eci": self.eci,
          "cryptogram": self.cryptogram,
          "applepay_response": self.applepay_response,
          "applepay_mid": self.applepay_mid,
          "payment_token": self.payment_token,
          "contact": self.contact,
          "shipping": self.shipping,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "device"
        self.device = data["device"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "number"
        self.number = data["number"]
      end
      if data.include? "exp_day"
        self.exp_day = data["exp_day"]
      end
      if data.include? "exp_month"
        self.exp_month = data["exp_month"]
      end
      if data.include? "exp_year"
        self.exp_year = data["exp_year"]
      end
      if data.include? "cvc2"
        self.cvc2 = data["cvc2"]
      end
      if data.include? "preferred_scheme"
        self.preferred_scheme = data["preferred_scheme"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "token_type"
        self.token_type = data["token_type"]
      end
      if data.include? "eci"
        self.eci = data["eci"]
      end
      if data.include? "cryptogram"
        self.cryptogram = data["cryptogram"]
      end
      if data.include? "applepay_response"
        self.applepay_response = data["applepay_response"]
      end
      if data.include? "applepay_mid"
        self.applepay_mid = data["applepay_mid"]
      end
      if data.include? "payment_token"
        self.payment_token = data["payment_token"]
      end
      if data.include? "contact"
        self.contact = data["contact"]
      end
      if data.include? "shipping"
        self.shipping = data["shipping"]
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
      self.device = data.fetch(:device, self.device)
      self.name = data.fetch(:name, self.name)
      self.number = data.fetch(:number, self.number)
      self.exp_day = data.fetch(:exp_day, self.exp_day)
      self.exp_month = data.fetch(:exp_month, self.exp_month)
      self.exp_year = data.fetch(:exp_year, self.exp_year)
      self.cvc2 = data.fetch(:cvc2, self.cvc2)
      self.preferred_scheme = data.fetch(:preferred_scheme, self.preferred_scheme)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.token_type = data.fetch(:token_type, self.token_type)
      self.eci = data.fetch(:eci, self.eci)
      self.cryptogram = data.fetch(:cryptogram, self.cryptogram)
      self.applepay_response = data.fetch(:applepay_response, self.applepay_response)
      self.applepay_mid = data.fetch(:applepay_mid, self.applepay_mid)
      self.payment_token = data.fetch(:payment_token, self.payment_token)
      self.contact = data.fetch(:contact, self.contact)
      self.shipping = data.fetch(:shipping, self.shipping)
      
      self
    end

    # Create a new card.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/cards"
      data    = {

      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["card"]
      
      
      obj = CardCreateRequest.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
