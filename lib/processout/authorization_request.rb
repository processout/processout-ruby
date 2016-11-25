# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class AuthorizationRequest
    
    attr_reader :id
    attr_reader :project
    attr_reader :customer
    attr_reader :token
    attr_reader :url
    attr_reader :authorized
    attr_reader :name
    attr_reader :currency
    attr_reader :return_url
    attr_reader :cancel_url
    attr_reader :sandbox
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def project=(val)
      if val.instance_of? Project
        @project = val
      else
        obj = Project.new(@client)
        obj.fill_with_data(val)
        @project = obj
      end
      
    end
    
    def customer=(val)
      if val.instance_of? Customer
        @customer = val
      else
        obj = Customer.new(@client)
        obj.fill_with_data(val)
        @customer = obj
      end
      
    end
    
    def token=(val)
      if val.instance_of? Token
        @token = val
      else
        obj = Token.new(@client)
        obj.fill_with_data(val)
        @token = obj
      end
      
    end
    
    def url=(val)
      @url = val
    end
    
    def authorized=(val)
      @authorized = val
    end
    
    def name=(val)
      @name = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def return_url=(val)
      @return_url = val
    end
    
    def cancel_url=(val)
      @cancel_url = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the AuthorizationRequest object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.customer = data.fetch(:customer, nil)
      self.token = data.fetch(:token, nil)
      self.url = data.fetch(:url, nil)
      self.authorized = data.fetch(:authorized, nil)
      self.name = data.fetch(:name, nil)
      self.currency = data.fetch(:currency, nil)
      self.return_url = data.fetch(:return_url, nil)
      self.cancel_url = data.fetch(:cancel_url, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new AuthorizationRequest using the current client
    def new(data = {})
      AuthorizationRequest.new(@client, data)
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
      if data.include? "customer"
        self.customer = data["customer"]
      end
      if data.include? "token"
        self.token = data["token"]
      end
      if data.include? "url"
        self.url = data["url"]
      end
      if data.include? "authorized"
        self.authorized = data["authorized"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "return_url"
        self.return_url = data["return_url"]
      end
      if data.include? "cancel_url"
        self.cancel_url = data["cancel_url"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      
      self
    end

    # Prefills the object with the data passed as Parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.id = data.fetch(:id, self.id)
      self.project = data.fetch(:project, self.project)
      self.customer = data.fetch(:customer, self.customer)
      self.token = data.fetch(:token, self.token)
      self.url = data.fetch(:url, self.url)
      self.authorized = data.fetch(:authorized, self.authorized)
      self.name = data.fetch(:name, self.name)
      self.currency = data.fetch(:currency, self.currency)
      self.return_url = data.fetch(:return_url, self.return_url)
      self.cancel_url = data.fetch(:cancel_url, self.cancel_url)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get the customer linked to the authorization request.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_customer(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/authorization-requests/" + CGI.escape(@id) + "/customers"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer"]
      customer = Customer.new(@client)
      return_values.push(customer.fill_with_data(body))

      
      return_values[0]
    end

    # Create a new authorization request for the given customer ID.
    # Params:
    # +customer_id+:: ID of the customer
    # +options+:: +Hash+ of options
    def create(customer_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/authorization-requests"
      data    = {
        "name" => @name, 
        "currency" => @currency, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url, 
        "customer_id" => customer_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["authorization_request"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find an authorization request by its ID.
    # Params:
    # +authorization_request_id+:: ID of the authorization request
    # +options+:: +Hash+ of options
    def find(authorization_request_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/authorization-requests/" + CGI.escape(authorization_request_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["authorization_request"]
      
      
      obj = AuthorizationRequest.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
