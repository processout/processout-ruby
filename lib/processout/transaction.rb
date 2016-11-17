# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Transaction
    
    attr_reader :id
    attr_reader :project
    attr_reader :customer
    attr_reader :subscription
    attr_reader :token
    attr_reader :card
    attr_reader :name
    attr_reader :authorized_amount
    attr_reader :captured_amount
    attr_reader :currency
    attr_reader :status
    attr_reader :authorized
    attr_reader :captured
    attr_reader :processout_fee
    attr_reader :metadata
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
    
    def subscription=(val)
      if val.instance_of? Subscription
        @subscription = val
      else
        obj = Subscription.new(@client)
        obj.fill_with_data(val)
        @subscription = obj
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
    
    def card=(val)
      if val.instance_of? Card
        @card = val
      else
        obj = Card.new(@client)
        obj.fill_with_data(val)
        @card = obj
      end
      
    end
    
    def name=(val)
      @name = val
    end
    
    def authorized_amount=(val)
      @authorized_amount = val
    end
    
    def captured_amount=(val)
      @captured_amount = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def status=(val)
      @status = val
    end
    
    def authorized=(val)
      @authorized = val
    end
    
    def captured=(val)
      @captured = val
    end
    
    def processout_fee=(val)
      @processout_fee = val
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
    

    # Initializes the Transaction object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @customer = data.fetch(:customer, nil)
      @subscription = data.fetch(:subscription, nil)
      @token = data.fetch(:token, nil)
      @card = data.fetch(:card, nil)
      @name = data.fetch(:name, "")
      @authorized_amount = data.fetch(:authorized_amount, "")
      @captured_amount = data.fetch(:captured_amount, "")
      @currency = data.fetch(:currency, "")
      @status = data.fetch(:status, "")
      @authorized = data.fetch(:authorized, false)
      @captured = data.fetch(:captured, false)
      @processout_fee = data.fetch(:processout_fee, "")
      @metadata = data.fetch(:metadata, Hash.new)
      @sandbox = data.fetch(:sandbox, false)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Transaction using the current client
    def new(data = {})
      Transaction.new(@client, data)
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
      if data.include? "customer"
        @customer = data["customer"]
      end
      if data.include? "subscription"
        @subscription = data["subscription"]
      end
      if data.include? "token"
        @token = data["token"]
      end
      if data.include? "card"
        @card = data["card"]
      end
      if data.include? "name"
        @name = data["name"]
      end
      if data.include? "authorized_amount"
        @authorized_amount = data["authorized_amount"]
      end
      if data.include? "captured_amount"
        @captured_amount = data["captured_amount"]
      end
      if data.include? "currency"
        @currency = data["currency"]
      end
      if data.include? "status"
        @status = data["status"]
      end
      if data.include? "authorized"
        @authorized = data["authorized"]
      end
      if data.include? "captured"
        @captured = data["captured"]
      end
      if data.include? "processout_fee"
        @processout_fee = data["processout_fee"]
      end
      if data.include? "metadata"
        @metadata = data["metadata"]
      end
      if data.include? "sandbox"
        @sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        @created_at = data["created_at"]
      end
      
      self
    end

    # Get the transaction's refunds.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_refunds(options = {})
      request = Request.new(@client)
      path    = "/transactions/" + CGI.escape(@id) + "/refunds"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['refunds']
        tmp = Refund.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a transaction's refund by its ID.
    # Params:
    # +refund_id+:: ID of the refund
    # +options+:: +Hash+ of options
    def find_refund(refund_id, options = {})
      request = Request.new(@client)
      path    = "/transactions/" + CGI.escape(@id) + "/refunds/" + CGI.escape(refund_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["refund"]
      refund = Refund.new(@client)
      return_values.push(refund.fill_with_data(body))

      
      return_values[0]
    end

    # Get all the transactions.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      request = Request.new(@client)
      path    = "/transactions"
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

    # Find a transaction by its ID.
    # Params:
    # +transaction_id+:: ID of the transaction
    # +options+:: +Hash+ of options
    def find(transaction_id, options = {})
      request = Request.new(@client)
      path    = "/transactions/" + CGI.escape(transaction_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["transaction"]
      
      
      obj = Transaction.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
