# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Token
    
    attr_reader :id
    attr_reader :customer
    attr_reader :customer_id
    attr_reader :gateway_configuration
    attr_reader :gateway_configuration_id
    attr_reader :card
    attr_reader :card_id
    attr_reader :type
    attr_reader :metadata
    attr_reader :is_subscription_only
    attr_reader :is_default
    attr_reader :return_url
    attr_reader :cancel_url
    attr_reader :summary
    attr_reader :is_chargeable
    attr_reader :created_at
    attr_reader :description
    attr_reader :invoice
    attr_reader :invoice_id
    attr_reader :manual_invoice_cancellation
    attr_reader :verification_status
    attr_reader :can_get_balance

    
    def id=(val)
      @id = val
    end
    
    def customer=(val)
      if val.nil?
        @customer = val
        return
      end

      if val.instance_of? Customer
        @customer = val
      else
        obj = Customer.new(@client)
        obj.fill_with_data(val)
        @customer = obj
      end
      
    end
    
    def customer_id=(val)
      @customer_id = val
    end
    
    def gateway_configuration=(val)
      if val.nil?
        @gateway_configuration = val
        return
      end

      if val.instance_of? GatewayConfiguration
        @gateway_configuration = val
      else
        obj = GatewayConfiguration.new(@client)
        obj.fill_with_data(val)
        @gateway_configuration = obj
      end
      
    end
    
    def gateway_configuration_id=(val)
      @gateway_configuration_id = val
    end
    
    def card=(val)
      if val.nil?
        @card = val
        return
      end

      if val.instance_of? Card
        @card = val
      else
        obj = Card.new(@client)
        obj.fill_with_data(val)
        @card = obj
      end
      
    end
    
    def card_id=(val)
      @card_id = val
    end
    
    def type=(val)
      @type = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def is_subscription_only=(val)
      @is_subscription_only = val
    end
    
    def is_default=(val)
      @is_default = val
    end
    
    def return_url=(val)
      @return_url = val
    end
    
    def cancel_url=(val)
      @cancel_url = val
    end
    
    def summary=(val)
      @summary = val
    end
    
    def is_chargeable=(val)
      @is_chargeable = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    
    def description=(val)
      @description = val
    end
    
    def invoice=(val)
      if val.nil?
        @invoice = val
        return
      end

      if val.instance_of? Invoice
        @invoice = val
      else
        obj = Invoice.new(@client)
        obj.fill_with_data(val)
        @invoice = obj
      end
      
    end
    
    def invoice_id=(val)
      @invoice_id = val
    end
    
    def manual_invoice_cancellation=(val)
      @manual_invoice_cancellation = val
    end
    
    def verification_status=(val)
      @verification_status = val
    end
    
    def can_get_balance=(val)
      @can_get_balance = val
    end
    

    # Initializes the Token object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.customer = data.fetch(:customer, nil)
      self.customer_id = data.fetch(:customer_id, nil)
      self.gateway_configuration = data.fetch(:gateway_configuration, nil)
      self.gateway_configuration_id = data.fetch(:gateway_configuration_id, nil)
      self.card = data.fetch(:card, nil)
      self.card_id = data.fetch(:card_id, nil)
      self.type = data.fetch(:type, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.is_subscription_only = data.fetch(:is_subscription_only, nil)
      self.is_default = data.fetch(:is_default, nil)
      self.return_url = data.fetch(:return_url, nil)
      self.cancel_url = data.fetch(:cancel_url, nil)
      self.summary = data.fetch(:summary, nil)
      self.is_chargeable = data.fetch(:is_chargeable, nil)
      self.created_at = data.fetch(:created_at, nil)
      self.description = data.fetch(:description, nil)
      self.invoice = data.fetch(:invoice, nil)
      self.invoice_id = data.fetch(:invoice_id, nil)
      self.manual_invoice_cancellation = data.fetch(:manual_invoice_cancellation, nil)
      self.verification_status = data.fetch(:verification_status, nil)
      self.can_get_balance = data.fetch(:can_get_balance, nil)
      
    end

    # Create a new Token using the current client
    def new(data = {})
      Token.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "customer": self.customer,
          "customer_id": self.customer_id,
          "gateway_configuration": self.gateway_configuration,
          "gateway_configuration_id": self.gateway_configuration_id,
          "card": self.card,
          "card_id": self.card_id,
          "type": self.type,
          "metadata": self.metadata,
          "is_subscription_only": self.is_subscription_only,
          "is_default": self.is_default,
          "return_url": self.return_url,
          "cancel_url": self.cancel_url,
          "summary": self.summary,
          "is_chargeable": self.is_chargeable,
          "created_at": self.created_at,
          "description": self.description,
          "invoice": self.invoice,
          "invoice_id": self.invoice_id,
          "manual_invoice_cancellation": self.manual_invoice_cancellation,
          "verification_status": self.verification_status,
          "can_get_balance": self.can_get_balance,
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
      if data.include? "customer"
        self.customer = data["customer"]
      end
      if data.include? "customer_id"
        self.customer_id = data["customer_id"]
      end
      if data.include? "gateway_configuration"
        self.gateway_configuration = data["gateway_configuration"]
      end
      if data.include? "gateway_configuration_id"
        self.gateway_configuration_id = data["gateway_configuration_id"]
      end
      if data.include? "card"
        self.card = data["card"]
      end
      if data.include? "card_id"
        self.card_id = data["card_id"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "is_subscription_only"
        self.is_subscription_only = data["is_subscription_only"]
      end
      if data.include? "is_default"
        self.is_default = data["is_default"]
      end
      if data.include? "return_url"
        self.return_url = data["return_url"]
      end
      if data.include? "cancel_url"
        self.cancel_url = data["cancel_url"]
      end
      if data.include? "summary"
        self.summary = data["summary"]
      end
      if data.include? "is_chargeable"
        self.is_chargeable = data["is_chargeable"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      if data.include? "description"
        self.description = data["description"]
      end
      if data.include? "invoice"
        self.invoice = data["invoice"]
      end
      if data.include? "invoice_id"
        self.invoice_id = data["invoice_id"]
      end
      if data.include? "manual_invoice_cancellation"
        self.manual_invoice_cancellation = data["manual_invoice_cancellation"]
      end
      if data.include? "verification_status"
        self.verification_status = data["verification_status"]
      end
      if data.include? "can_get_balance"
        self.can_get_balance = data["can_get_balance"]
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
      self.customer = data.fetch(:customer, self.customer)
      self.customer_id = data.fetch(:customer_id, self.customer_id)
      self.gateway_configuration = data.fetch(:gateway_configuration, self.gateway_configuration)
      self.gateway_configuration_id = data.fetch(:gateway_configuration_id, self.gateway_configuration_id)
      self.card = data.fetch(:card, self.card)
      self.card_id = data.fetch(:card_id, self.card_id)
      self.type = data.fetch(:type, self.type)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.is_subscription_only = data.fetch(:is_subscription_only, self.is_subscription_only)
      self.is_default = data.fetch(:is_default, self.is_default)
      self.return_url = data.fetch(:return_url, self.return_url)
      self.cancel_url = data.fetch(:cancel_url, self.cancel_url)
      self.summary = data.fetch(:summary, self.summary)
      self.is_chargeable = data.fetch(:is_chargeable, self.is_chargeable)
      self.created_at = data.fetch(:created_at, self.created_at)
      self.description = data.fetch(:description, self.description)
      self.invoice = data.fetch(:invoice, self.invoice)
      self.invoice_id = data.fetch(:invoice_id, self.invoice_id)
      self.manual_invoice_cancellation = data.fetch(:manual_invoice_cancellation, self.manual_invoice_cancellation)
      self.verification_status = data.fetch(:verification_status, self.verification_status)
      self.can_get_balance = data.fetch(:can_get_balance, self.can_get_balance)
      
      self
    end

    # Get the customer's tokens.
    # Params:
    # +customer_id+:: ID of the customer
    # +options+:: +Hash+ of options
    def fetch_customer_tokens(customer_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(customer_id) + "/tokens"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['tokens']
        tmp = Token.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a customer's token by its ID.
    # Params:
    # +customer_id+:: ID of the customer
    # +token_id+:: ID of the token
    # +options+:: +Hash+ of options
    def find(customer_id, token_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(customer_id) + "/tokens/" + CGI.escape(token_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["token"]
      
      
      obj = Token.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Create a new token for the given customer ID.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@customer_id) + "/tokens"
      data    = {
        "metadata" => @metadata, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url, 
        "description" => @description, 
        "invoice_id" => @invoice_id, 
        "manual_invoice_cancellation" => @manual_invoice_cancellation, 
        "source" => options.fetch(:source, nil), 
        "settings" => options.fetch(:settings, nil), 
        "device" => options.fetch(:device, nil), 
        "verify" => options.fetch(:verify, nil), 
        "verify_metadata" => options.fetch(:verify_metadata, nil), 
        "set_default" => options.fetch(:set_default, nil)
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["token"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated customer attributes.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@customer_id) + "/tokens/" + CGI.escape(@id) + ""
      data    = {
        "source" => options.fetch(:source, nil), 
        "settings" => options.fetch(:settings, nil), 
        "device" => options.fetch(:device, nil), 
        "verify" => options.fetch(:verify, nil), 
        "verify_metadata" => options.fetch(:verify_metadata, nil), 
        "set_default" => options.fetch(:set_default, nil)
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    # Delete a customer token
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@customer_id) + "/tokens/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
