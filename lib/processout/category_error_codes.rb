# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CategoryErrorCodes
    
    attr_reader :generic
    attr_reader :service
    attr_reader :gateway
    attr_reader :card
    attr_reader :check
    attr_reader :shipping
    attr_reader :customer
    attr_reader :payment
    attr_reader :refund
    attr_reader :wallet
    attr_reader :request

    
    def generic=(val)
      @generic = val
    end
    
    def service=(val)
      @service = val
    end
    
    def gateway=(val)
      @gateway = val
    end
    
    def card=(val)
      @card = val
    end
    
    def check=(val)
      @check = val
    end
    
    def shipping=(val)
      @shipping = val
    end
    
    def customer=(val)
      @customer = val
    end
    
    def payment=(val)
      @payment = val
    end
    
    def refund=(val)
      @refund = val
    end
    
    def wallet=(val)
      @wallet = val
    end
    
    def request=(val)
      @request = val
    end
    

    # Initializes the CategoryErrorCodes object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.generic = data.fetch(:generic, nil)
      self.service = data.fetch(:service, nil)
      self.gateway = data.fetch(:gateway, nil)
      self.card = data.fetch(:card, nil)
      self.check = data.fetch(:check, nil)
      self.shipping = data.fetch(:shipping, nil)
      self.customer = data.fetch(:customer, nil)
      self.payment = data.fetch(:payment, nil)
      self.refund = data.fetch(:refund, nil)
      self.wallet = data.fetch(:wallet, nil)
      self.request = data.fetch(:request, nil)
      
    end

    # Create a new CategoryErrorCodes using the current client
    def new(data = {})
      CategoryErrorCodes.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "generic": self.generic,
          "service": self.service,
          "gateway": self.gateway,
          "card": self.card,
          "check": self.check,
          "shipping": self.shipping,
          "customer": self.customer,
          "payment": self.payment,
          "refund": self.refund,
          "wallet": self.wallet,
          "request": self.request,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "generic"
        self.generic = data["generic"]
      end
      if data.include? "service"
        self.service = data["service"]
      end
      if data.include? "gateway"
        self.gateway = data["gateway"]
      end
      if data.include? "card"
        self.card = data["card"]
      end
      if data.include? "check"
        self.check = data["check"]
      end
      if data.include? "shipping"
        self.shipping = data["shipping"]
      end
      if data.include? "customer"
        self.customer = data["customer"]
      end
      if data.include? "payment"
        self.payment = data["payment"]
      end
      if data.include? "refund"
        self.refund = data["refund"]
      end
      if data.include? "wallet"
        self.wallet = data["wallet"]
      end
      if data.include? "request"
        self.request = data["request"]
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
      self.generic = data.fetch(:generic, self.generic)
      self.service = data.fetch(:service, self.service)
      self.gateway = data.fetch(:gateway, self.gateway)
      self.card = data.fetch(:card, self.card)
      self.check = data.fetch(:check, self.check)
      self.shipping = data.fetch(:shipping, self.shipping)
      self.customer = data.fetch(:customer, self.customer)
      self.payment = data.fetch(:payment, self.payment)
      self.refund = data.fetch(:refund, self.refund)
      self.wallet = data.fetch(:wallet, self.wallet)
      self.request = data.fetch(:request, self.request)
      
      self
    end

    
  end
end
