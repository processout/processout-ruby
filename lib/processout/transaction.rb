# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Transaction
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :invoice
    attr_reader :invoice_id
    attr_reader :customer
    attr_reader :customer_id
    attr_reader :subscription
    attr_reader :subscription_id
    attr_reader :token
    attr_reader :token_id
    attr_reader :card
    attr_reader :card_id
    attr_reader :operations
    attr_reader :refunds
    attr_reader :name
    attr_reader :authorized_amount
    attr_reader :captured_amount
    attr_reader :currency
    attr_reader :status
    attr_reader :authorized
    attr_reader :captured
    attr_reader :processout_fee
    attr_reader :estimated_fee
    attr_reader :gateway_fee
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
    
    def invoice=(val)
      if val.nil?
        @invoice = val
        return
      end

      if val.instance_of? Customer
        @invoice = val
      else
        obj = Customer.new(@client)
        obj.fill_with_data(val)
        @invoice = obj
      end
      
    end
    
    def invoice_id=(val)
      @invoice_id = val
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
    
    def subscription=(val)
      if val.nil?
        @subscription = val
        return
      end

      if val.instance_of? Subscription
        @subscription = val
      else
        obj = Subscription.new(@client)
        obj.fill_with_data(val)
        @subscription = obj
      end
      
    end
    
    def subscription_id=(val)
      @subscription_id = val
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
    
    def token_id=(val)
      @token_id = val
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
    
    def operations=(val)
      if val.nil?
        @operations = []
        return
      end

      if val.length > 0 and val[0].instance_of? TransactionOperation
        @operations = val
      else
        l = Array.new
        for v in val
          obj = TransactionOperation.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @operations = l
      end
      
    end
    
    def refunds=(val)
      if val.nil?
        @refunds = []
        return
      end

      if val.length > 0 and val[0].instance_of? Refund
        @refunds = val
      else
        l = Array.new
        for v in val
          obj = Refund.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @refunds = l
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
    
    def estimated_fee=(val)
      @estimated_fee = val
    end
    
    def gateway_fee=(val)
      @gateway_fee = val
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

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.invoice = data.fetch(:invoice, nil)
      self.invoice_id = data.fetch(:invoice_id, nil)
      self.customer = data.fetch(:customer, nil)
      self.customer_id = data.fetch(:customer_id, nil)
      self.subscription = data.fetch(:subscription, nil)
      self.subscription_id = data.fetch(:subscription_id, nil)
      self.token = data.fetch(:token, nil)
      self.token_id = data.fetch(:token_id, nil)
      self.card = data.fetch(:card, nil)
      self.card_id = data.fetch(:card_id, nil)
      self.operations = data.fetch(:operations, nil)
      self.refunds = data.fetch(:refunds, nil)
      self.name = data.fetch(:name, nil)
      self.authorized_amount = data.fetch(:authorized_amount, nil)
      self.captured_amount = data.fetch(:captured_amount, nil)
      self.currency = data.fetch(:currency, nil)
      self.status = data.fetch(:status, nil)
      self.authorized = data.fetch(:authorized, nil)
      self.captured = data.fetch(:captured, nil)
      self.processout_fee = data.fetch(:processout_fee, nil)
      self.estimated_fee = data.fetch(:estimated_fee, nil)
      self.gateway_fee = data.fetch(:gateway_fee, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Transaction using the current client
    def new(data = {})
      Transaction.new(@client, data)
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
      if data.include? "invoice"
        self.invoice = data["invoice"]
      end
      if data.include? "invoice_id"
        self.invoice_id = data["invoice_id"]
      end
      if data.include? "customer"
        self.customer = data["customer"]
      end
      if data.include? "customer_id"
        self.customer_id = data["customer_id"]
      end
      if data.include? "subscription"
        self.subscription = data["subscription"]
      end
      if data.include? "subscription_id"
        self.subscription_id = data["subscription_id"]
      end
      if data.include? "token"
        self.token = data["token"]
      end
      if data.include? "token_id"
        self.token_id = data["token_id"]
      end
      if data.include? "card"
        self.card = data["card"]
      end
      if data.include? "card_id"
        self.card_id = data["card_id"]
      end
      if data.include? "operations"
        self.operations = data["operations"]
      end
      if data.include? "refunds"
        self.refunds = data["refunds"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "authorized_amount"
        self.authorized_amount = data["authorized_amount"]
      end
      if data.include? "captured_amount"
        self.captured_amount = data["captured_amount"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "status"
        self.status = data["status"]
      end
      if data.include? "authorized"
        self.authorized = data["authorized"]
      end
      if data.include? "captured"
        self.captured = data["captured"]
      end
      if data.include? "processout_fee"
        self.processout_fee = data["processout_fee"]
      end
      if data.include? "estimated_fee"
        self.estimated_fee = data["estimated_fee"]
      end
      if data.include? "gateway_fee"
        self.gateway_fee = data["gateway_fee"]
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
      self.invoice = data.fetch(:invoice, self.invoice)
      self.invoice_id = data.fetch(:invoice_id, self.invoice_id)
      self.customer = data.fetch(:customer, self.customer)
      self.customer_id = data.fetch(:customer_id, self.customer_id)
      self.subscription = data.fetch(:subscription, self.subscription)
      self.subscription_id = data.fetch(:subscription_id, self.subscription_id)
      self.token = data.fetch(:token, self.token)
      self.token_id = data.fetch(:token_id, self.token_id)
      self.card = data.fetch(:card, self.card)
      self.card_id = data.fetch(:card_id, self.card_id)
      self.operations = data.fetch(:operations, self.operations)
      self.refunds = data.fetch(:refunds, self.refunds)
      self.name = data.fetch(:name, self.name)
      self.authorized_amount = data.fetch(:authorized_amount, self.authorized_amount)
      self.captured_amount = data.fetch(:captured_amount, self.captured_amount)
      self.currency = data.fetch(:currency, self.currency)
      self.status = data.fetch(:status, self.status)
      self.authorized = data.fetch(:authorized, self.authorized)
      self.captured = data.fetch(:captured, self.captured)
      self.processout_fee = data.fetch(:processout_fee, self.processout_fee)
      self.estimated_fee = data.fetch(:estimated_fee, self.estimated_fee)
      self.gateway_fee = data.fetch(:gateway_fee, self.gateway_fee)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get the transaction's refunds.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_refunds(options = {})
      self.prefill(options)

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
      self.prefill(options)

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
      self.prefill(options)

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
      self.prefill(options)

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
