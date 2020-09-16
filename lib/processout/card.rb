# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Card
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :token
    attr_reader :scheme
    attr_reader :co_scheme
    attr_reader :preferred_scheme
    attr_reader :type
    attr_reader :bank_name
    attr_reader :brand
    attr_reader :iin
    attr_reader :last_4_digits
    attr_reader :exp_month
    attr_reader :exp_year
    attr_reader :cvc_check
    attr_reader :avs_check
    attr_reader :name
    attr_reader :address1
    attr_reader :address2
    attr_reader :city
    attr_reader :state
    attr_reader :zip
    attr_reader :country_code
    attr_reader :ip_address
    attr_reader :fingerprint
    attr_reader :metadata
    attr_reader :expires_soon
    attr_reader :sandbox
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def project=(val)
      if val.nil?
        @project = val
        return
      end

      if val.instance_of? Project
        @project = val
      else
        obj = Project.new(@client)
        obj.fill_with_data(val)
        @project = obj
      end
      
    end
    
    def project_id=(val)
      @project_id = val
    end
    
    def token=(val)
      if val.nil?
        @token = val
        return
      end

      if val.instance_of? Token
        @token = val
      else
        obj = Token.new(@client)
        obj.fill_with_data(val)
        @token = obj
      end
      
    end
    
    def scheme=(val)
      @scheme = val
    end
    
    def co_scheme=(val)
      @co_scheme = val
    end
    
    def preferred_scheme=(val)
      @preferred_scheme = val
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
    
    def iin=(val)
      @iin = val
    end
    
    def last_4_digits=(val)
      @last_4_digits = val
    end
    
    def exp_month=(val)
      @exp_month = val
    end
    
    def exp_year=(val)
      @exp_year = val
    end
    
    def cvc_check=(val)
      @cvc_check = val
    end
    
    def avs_check=(val)
      @avs_check = val
    end
    
    def name=(val)
      @name = val
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
    
    def zip=(val)
      @zip = val
    end
    
    def country_code=(val)
      @country_code = val
    end
    
    def ip_address=(val)
      @ip_address = val
    end
    
    def fingerprint=(val)
      @fingerprint = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def expires_soon=(val)
      @expires_soon = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Card object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.token = data.fetch(:token, nil)
      self.scheme = data.fetch(:scheme, nil)
      self.co_scheme = data.fetch(:co_scheme, nil)
      self.preferred_scheme = data.fetch(:preferred_scheme, nil)
      self.type = data.fetch(:type, nil)
      self.bank_name = data.fetch(:bank_name, nil)
      self.brand = data.fetch(:brand, nil)
      self.iin = data.fetch(:iin, nil)
      self.last_4_digits = data.fetch(:last_4_digits, nil)
      self.exp_month = data.fetch(:exp_month, nil)
      self.exp_year = data.fetch(:exp_year, nil)
      self.cvc_check = data.fetch(:cvc_check, nil)
      self.avs_check = data.fetch(:avs_check, nil)
      self.name = data.fetch(:name, nil)
      self.address1 = data.fetch(:address1, nil)
      self.address2 = data.fetch(:address2, nil)
      self.city = data.fetch(:city, nil)
      self.state = data.fetch(:state, nil)
      self.zip = data.fetch(:zip, nil)
      self.country_code = data.fetch(:country_code, nil)
      self.ip_address = data.fetch(:ip_address, nil)
      self.fingerprint = data.fetch(:fingerprint, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.expires_soon = data.fetch(:expires_soon, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Card using the current client
    def new(data = {})
      Card.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "project": self.project,
          "project_id": self.project_id,
          "token": self.token,
          "scheme": self.scheme,
          "co_scheme": self.co_scheme,
          "preferred_scheme": self.preferred_scheme,
          "type": self.type,
          "bank_name": self.bank_name,
          "brand": self.brand,
          "iin": self.iin,
          "last_4_digits": self.last_4_digits,
          "exp_month": self.exp_month,
          "exp_year": self.exp_year,
          "cvc_check": self.cvc_check,
          "avs_check": self.avs_check,
          "name": self.name,
          "address1": self.address1,
          "address2": self.address2,
          "city": self.city,
          "state": self.state,
          "zip": self.zip,
          "country_code": self.country_code,
          "ip_address": self.ip_address,
          "fingerprint": self.fingerprint,
          "metadata": self.metadata,
          "expires_soon": self.expires_soon,
          "sandbox": self.sandbox,
          "created_at": self.created_at,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "id"
        self.id = data["id"]
      end
      if data.include? "project"
        self.project = data["project"]
      end
      if data.include? "project_id"
        self.project_id = data["project_id"]
      end
      if data.include? "token"
        self.token = data["token"]
      end
      if data.include? "scheme"
        self.scheme = data["scheme"]
      end
      if data.include? "co_scheme"
        self.co_scheme = data["co_scheme"]
      end
      if data.include? "preferred_scheme"
        self.preferred_scheme = data["preferred_scheme"]
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
      if data.include? "iin"
        self.iin = data["iin"]
      end
      if data.include? "last_4_digits"
        self.last_4_digits = data["last_4_digits"]
      end
      if data.include? "exp_month"
        self.exp_month = data["exp_month"]
      end
      if data.include? "exp_year"
        self.exp_year = data["exp_year"]
      end
      if data.include? "cvc_check"
        self.cvc_check = data["cvc_check"]
      end
      if data.include? "avs_check"
        self.avs_check = data["avs_check"]
      end
      if data.include? "name"
        self.name = data["name"]
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
      if data.include? "zip"
        self.zip = data["zip"]
      end
      if data.include? "country_code"
        self.country_code = data["country_code"]
      end
      if data.include? "ip_address"
        self.ip_address = data["ip_address"]
      end
      if data.include? "fingerprint"
        self.fingerprint = data["fingerprint"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "expires_soon"
        self.expires_soon = data["expires_soon"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
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
      self.id = data.fetch(:id, self.id)
      self.project = data.fetch(:project, self.project)
      self.project_id = data.fetch(:project_id, self.project_id)
      self.token = data.fetch(:token, self.token)
      self.scheme = data.fetch(:scheme, self.scheme)
      self.co_scheme = data.fetch(:co_scheme, self.co_scheme)
      self.preferred_scheme = data.fetch(:preferred_scheme, self.preferred_scheme)
      self.type = data.fetch(:type, self.type)
      self.bank_name = data.fetch(:bank_name, self.bank_name)
      self.brand = data.fetch(:brand, self.brand)
      self.iin = data.fetch(:iin, self.iin)
      self.last_4_digits = data.fetch(:last_4_digits, self.last_4_digits)
      self.exp_month = data.fetch(:exp_month, self.exp_month)
      self.exp_year = data.fetch(:exp_year, self.exp_year)
      self.cvc_check = data.fetch(:cvc_check, self.cvc_check)
      self.avs_check = data.fetch(:avs_check, self.avs_check)
      self.name = data.fetch(:name, self.name)
      self.address1 = data.fetch(:address1, self.address1)
      self.address2 = data.fetch(:address2, self.address2)
      self.city = data.fetch(:city, self.city)
      self.state = data.fetch(:state, self.state)
      self.zip = data.fetch(:zip, self.zip)
      self.country_code = data.fetch(:country_code, self.country_code)
      self.ip_address = data.fetch(:ip_address, self.ip_address)
      self.fingerprint = data.fetch(:fingerprint, self.fingerprint)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.expires_soon = data.fetch(:expires_soon, self.expires_soon)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get all the cards.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/cards"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['cards']
        tmp = Card.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a card by its ID.
    # Params:
    # +card_id+:: ID of the card
    # +options+:: +Hash+ of options
    def find(card_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/cards/" + CGI.escape(card_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["card"]
      
      
      obj = Card.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Anonymize the card.
    # Params:
    # +options+:: +Hash+ of options
    def anonymize(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/cards/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
