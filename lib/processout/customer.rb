# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Customer
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :default_token
    attr_reader :default_token_id
    attr_reader :tokens
    attr_reader :subscriptions
    attr_reader :transactions
    attr_reader :balance
    attr_reader :currency
    attr_reader :email
    attr_reader :first_name
    attr_reader :last_name
    attr_reader :address1
    attr_reader :address2
    attr_reader :city
    attr_reader :state
    attr_reader :zip
    attr_reader :country_code
    attr_reader :ip_address
    attr_reader :transactions_count
    attr_reader :subscriptions_count
    attr_reader :mrr_local
    attr_reader :total_revenue_local
    attr_reader :metadata
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
    
    def default_token=(val)
      if val.nil?
        @default_token = val
        return
      end

      if val.instance_of? Token
        @default_token = val
      else
        obj = Token.new(@client)
        obj.fill_with_data(val)
        @default_token = obj
      end
      
    end
    
    def default_token_id=(val)
      @default_token_id = val
    end
    
    def tokens=(val)
      if val.nil?
        @tokens = []
        return
      end

      if val.length > 0 and val[0].instance_of? Token
        @tokens = val
      else
        l = Array.new
        for v in val
          obj = Token.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @tokens = l
      end
      
    end
    
    def subscriptions=(val)
      if val.nil?
        @subscriptions = []
        return
      end

      if val.length > 0 and val[0].instance_of? Subscription
        @subscriptions = val
      else
        l = Array.new
        for v in val
          obj = Subscription.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @subscriptions = l
      end
      
    end
    
    def transactions=(val)
      if val.nil?
        @transactions = []
        return
      end

      if val.length > 0 and val[0].instance_of? Transaction
        @transactions = val
      else
        l = Array.new
        for v in val
          obj = Transaction.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @transactions = l
      end
      
    end
    
    def balance=(val)
      @balance = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def email=(val)
      @email = val
    end
    
    def first_name=(val)
      @first_name = val
    end
    
    def last_name=(val)
      @last_name = val
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
    
    def transactions_count=(val)
      @transactions_count = val
    end
    
    def subscriptions_count=(val)
      @subscriptions_count = val
    end
    
    def mrr_local=(val)
      @mrr_local = val
    end
    
    def total_revenue_local=(val)
      @total_revenue_local = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Customer object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.default_token = data.fetch(:default_token, nil)
      self.default_token_id = data.fetch(:default_token_id, nil)
      self.tokens = data.fetch(:tokens, nil)
      self.subscriptions = data.fetch(:subscriptions, nil)
      self.transactions = data.fetch(:transactions, nil)
      self.balance = data.fetch(:balance, nil)
      self.currency = data.fetch(:currency, nil)
      self.email = data.fetch(:email, nil)
      self.first_name = data.fetch(:first_name, nil)
      self.last_name = data.fetch(:last_name, nil)
      self.address1 = data.fetch(:address1, nil)
      self.address2 = data.fetch(:address2, nil)
      self.city = data.fetch(:city, nil)
      self.state = data.fetch(:state, nil)
      self.zip = data.fetch(:zip, nil)
      self.country_code = data.fetch(:country_code, nil)
      self.ip_address = data.fetch(:ip_address, nil)
      self.transactions_count = data.fetch(:transactions_count, nil)
      self.subscriptions_count = data.fetch(:subscriptions_count, nil)
      self.mrr_local = data.fetch(:mrr_local, nil)
      self.total_revenue_local = data.fetch(:total_revenue_local, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Customer using the current client
    def new(data = {})
      Customer.new(@client, data)
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
      if data.include? "default_token"
        self.default_token = data["default_token"]
      end
      if data.include? "default_token_id"
        self.default_token_id = data["default_token_id"]
      end
      if data.include? "tokens"
        self.tokens = data["tokens"]
      end
      if data.include? "subscriptions"
        self.subscriptions = data["subscriptions"]
      end
      if data.include? "transactions"
        self.transactions = data["transactions"]
      end
      if data.include? "balance"
        self.balance = data["balance"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "email"
        self.email = data["email"]
      end
      if data.include? "first_name"
        self.first_name = data["first_name"]
      end
      if data.include? "last_name"
        self.last_name = data["last_name"]
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
      if data.include? "transactions_count"
        self.transactions_count = data["transactions_count"]
      end
      if data.include? "subscriptions_count"
        self.subscriptions_count = data["subscriptions_count"]
      end
      if data.include? "mrr_local"
        self.mrr_local = data["mrr_local"]
      end
      if data.include? "total_revenue_local"
        self.total_revenue_local = data["total_revenue_local"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
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
      self.default_token = data.fetch(:default_token, self.default_token)
      self.default_token_id = data.fetch(:default_token_id, self.default_token_id)
      self.tokens = data.fetch(:tokens, self.tokens)
      self.subscriptions = data.fetch(:subscriptions, self.subscriptions)
      self.transactions = data.fetch(:transactions, self.transactions)
      self.balance = data.fetch(:balance, self.balance)
      self.currency = data.fetch(:currency, self.currency)
      self.email = data.fetch(:email, self.email)
      self.first_name = data.fetch(:first_name, self.first_name)
      self.last_name = data.fetch(:last_name, self.last_name)
      self.address1 = data.fetch(:address1, self.address1)
      self.address2 = data.fetch(:address2, self.address2)
      self.city = data.fetch(:city, self.city)
      self.state = data.fetch(:state, self.state)
      self.zip = data.fetch(:zip, self.zip)
      self.country_code = data.fetch(:country_code, self.country_code)
      self.ip_address = data.fetch(:ip_address, self.ip_address)
      self.transactions_count = data.fetch(:transactions_count, self.transactions_count)
      self.subscriptions_count = data.fetch(:subscriptions_count, self.subscriptions_count)
      self.mrr_local = data.fetch(:mrr_local, self.mrr_local)
      self.total_revenue_local = data.fetch(:total_revenue_local, self.total_revenue_local)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get the subscriptions belonging to the customer.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_subscriptions(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + "/subscriptions"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['subscriptions']
        tmp = Subscription.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Get the customer's tokens.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_tokens(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + "/tokens"
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
    # +token_id+:: ID of the token
    # +options+:: +Hash+ of options
    def find_token(token_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + "/tokens/" + CGI.escape(token_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["token"]
      token = Token.new(@client)
      return_values.push(token.fill_with_data(body))

      
      return_values[0]
    end

    # Delete a customer's token by its ID.
    # Params:
    # +token_id+:: ID of the token
    # +options+:: +Hash+ of options
    def delete_token(token_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + "/tokens/" + CGI.escape(token_id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    # Get the transactions belonging to the customer.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_transactions(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + "/transactions"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['transactions']
        tmp = Transaction.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Get all the customers.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['customers']
        tmp = Customer.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Create a new customer.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers"
      data    = {
        "balance" => @balance, 
        "currency" => @currency, 
        "email" => @email, 
        "first_name" => @first_name, 
        "last_name" => @last_name, 
        "address1" => @address1, 
        "address2" => @address2, 
        "city" => @city, 
        "state" => @state, 
        "zip" => @zip, 
        "country_code" => @country_code, 
        "ip_address" => @ip_address, 
        "metadata" => @metadata
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find a customer by its ID.
    # Params:
    # +customer_id+:: ID of the customer
    # +options+:: +Hash+ of options
    def find(customer_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(customer_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer"]
      
      
      obj = Customer.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated customer attributes.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + ""
      data    = {
        "balance" => @balance, 
        "default_token_id" => @default_token_id, 
        "email" => @email, 
        "first_name" => @first_name, 
        "last_name" => @last_name, 
        "address1" => @address1, 
        "address2" => @address2, 
        "city" => @city, 
        "state" => @state, 
        "zip" => @zip, 
        "country_code" => @country_code, 
        "ip_address" => @ip_address, 
        "metadata" => @metadata
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Delete the customer.
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
