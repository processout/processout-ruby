# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Customer
    
    attr_reader :id
    attr_reader :project
    attr_reader :email
    attr_reader :first_name
    attr_reader :last_name
    attr_reader :address1
    attr_reader :address2
    attr_reader :city
    attr_reader :state
    attr_reader :zip
    attr_reader :country_code
    attr_reader :balance
    attr_reader :currency
    attr_reader :metadata
    attr_reader :has_pin
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
    
    def balance=(val)
      @balance = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def has_pin=(val)
      @has_pin = val
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

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @email = data.fetch(:email, "")
      @first_name = data.fetch(:first_name, "")
      @last_name = data.fetch(:last_name, "")
      @address1 = data.fetch(:address1, "")
      @address2 = data.fetch(:address2, "")
      @city = data.fetch(:city, "")
      @state = data.fetch(:state, "")
      @zip = data.fetch(:zip, "")
      @country_code = data.fetch(:country_code, "")
      @balance = data.fetch(:balance, "0")
      @currency = data.fetch(:currency, "")
      @metadata = data.fetch(:metadata, Hash.new)
      @has_pin = data.fetch(:has_pin, false)
      @sandbox = data.fetch(:sandbox, false)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Customer using the current client
    def new(data = {})
      Customer.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        @id = data["id"]
      end
      if data.include? "project"
        @project = data["project"]
      end
      if data.include? "email"
        @email = data["email"]
      end
      if data.include? "first_name"
        @first_name = data["first_name"]
      end
      if data.include? "last_name"
        @last_name = data["last_name"]
      end
      if data.include? "address1"
        @address1 = data["address1"]
      end
      if data.include? "address2"
        @address2 = data["address2"]
      end
      if data.include? "city"
        @city = data["city"]
      end
      if data.include? "state"
        @state = data["state"]
      end
      if data.include? "zip"
        @zip = data["zip"]
      end
      if data.include? "country_code"
        @country_code = data["country_code"]
      end
      if data.include? "balance"
        @balance = data["balance"]
      end
      if data.include? "currency"
        @currency = data["currency"]
      end
      if data.include? "metadata"
        @metadata = data["metadata"]
      end
      if data.include? "has_pin"
        @has_pin = data["has_pin"]
      end
      if data.include? "sandbox"
        @sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        @created_at = data["created_at"]
      end
      
      self
    end

    # Get the subscriptions belonging to the customer.
    # Params:
    # +options+:: +Hash+ of options
    def subscriptions(options = {})
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
    def tokens(options = {})
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

    # Get the transactions belonging to the customer.
    # Params:
    # +options+:: +Hash+ of options
    def transactions(options = {})
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
      request = Request.new(@client)
      path    = "/customers/" + CGI.escape(@id) + ""
      data    = {
        "balance" => @balance, 
        "email" => @email, 
        "first_name" => @first_name, 
        "last_name" => @last_name, 
        "address1" => @address1, 
        "address2" => @address2, 
        "city" => @city, 
        "state" => @state, 
        "zip" => @zip, 
        "country_code" => @country_code, 
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
