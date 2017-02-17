# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CardInformation
    
    attr_reader :iin
    attr_reader :scheme
    attr_reader :type
    attr_reader :bank_name
    attr_reader :brand
    attr_reader :country

    
    def iin=(val)
      @iin = val
    end
    
    def scheme=(val)
      @scheme = val
    end
    
    def type=(val)
      @type = val
    end
    
    def bank_name=(val)
      @bank_name = val
    end
    
    def brand=(val)
      @brand = val
    end
    
    def country=(val)
      @country = val
    end
    

    # Initializes the CardInformation object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.iin = data.fetch(:iin, nil)
      self.scheme = data.fetch(:scheme, nil)
      self.type = data.fetch(:type, nil)
      self.bank_name = data.fetch(:bank_name, nil)
      self.brand = data.fetch(:brand, nil)
      self.country = data.fetch(:country, nil)
      
    end

    # Create a new CardInformation using the current client
    def new(data = {})
      CardInformation.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "iin"
        self.iin = data["iin"]
      end
      if data.include? "scheme"
        self.scheme = data["scheme"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "bank_name"
        self.bank_name = data["bank_name"]
      end
      if data.include? "brand"
        self.brand = data["brand"]
      end
      if data.include? "country"
        self.country = data["country"]
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
      self.iin = data.fetch(:iin, self.iin)
      self.scheme = data.fetch(:scheme, self.scheme)
      self.type = data.fetch(:type, self.type)
      self.bank_name = data.fetch(:bank_name, self.bank_name)
      self.brand = data.fetch(:brand, self.brand)
      self.country = data.fetch(:country, self.country)
      
      self
    end

    # Fetch card information from the IIN.
    # Params:
    # +iin+:: IIN of the card (first 6 digits)
    # +options+:: +Hash+ of options
    def fetch(iin, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/iins/" + CGI.escape(iin) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["coupon"]
      
      
      obj = CardInformation.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
