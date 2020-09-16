# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Invoice
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :transaction
    attr_reader :transaction_id
    attr_reader :customer
    attr_reader :customer_id
    attr_reader :subscription
    attr_reader :subscription_id
    attr_reader :token
    attr_reader :token_id
    attr_reader :details
    attr_reader :url
    attr_reader :name
    attr_reader :amount
    attr_reader :currency
    attr_reader :merchant_initiator_type
    attr_reader :statement_descriptor
    attr_reader :statement_descriptor_phone
    attr_reader :statement_descriptor_city
    attr_reader :statement_descriptor_company
    attr_reader :statement_descriptor_url
    attr_reader :metadata
    attr_reader :gateway_data
    attr_reader :return_url
    attr_reader :cancel_url
    attr_reader :webhook_url
    attr_reader :require_backend_capture
    attr_reader :sandbox
    attr_reader :created_at
    attr_reader :risk
    attr_reader :shipping
    attr_reader :device
    attr_reader :external_fraud_tools

    
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
    
    def transaction=(val)
      if val.nil?
        @transaction = val
        return
      end

      if val.instance_of? Transaction
        @transaction = val
      else
        obj = Transaction.new(@client)
        obj.fill_with_data(val)
        @transaction = obj
      end
      
    end
    
    def transaction_id=(val)
      @transaction_id = val
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
    
    def details=(val)
      if val.nil?
        @details = []
        return
      end

      if val.length > 0 and val[0].instance_of? InvoiceDetail
        @details = val
      else
        l = Array.new
        for v in val
          obj = InvoiceDetail.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @details = l
      end
      
    end
    
    def url=(val)
      @url = val
    end
    
    def name=(val)
      @name = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def merchant_initiator_type=(val)
      @merchant_initiator_type = val
    end
    
    def statement_descriptor=(val)
      @statement_descriptor = val
    end
    
    def statement_descriptor_phone=(val)
      @statement_descriptor_phone = val
    end
    
    def statement_descriptor_city=(val)
      @statement_descriptor_city = val
    end
    
    def statement_descriptor_company=(val)
      @statement_descriptor_company = val
    end
    
    def statement_descriptor_url=(val)
      @statement_descriptor_url = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def gateway_data=(val)
      @gateway_data = val
    end
    
    def return_url=(val)
      @return_url = val
    end
    
    def cancel_url=(val)
      @cancel_url = val
    end
    
    def webhook_url=(val)
      @webhook_url = val
    end
    
    def require_backend_capture=(val)
      @require_backend_capture = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    
    def risk=(val)
      if val.nil?
        @risk = val
        return
      end

      if val.instance_of? InvoiceRisk
        @risk = val
      else
        obj = InvoiceRisk.new(@client)
        obj.fill_with_data(val)
        @risk = obj
      end
      
    end
    
    def shipping=(val)
      if val.nil?
        @shipping = val
        return
      end

      if val.instance_of? InvoiceShipping
        @shipping = val
      else
        obj = InvoiceShipping.new(@client)
        obj.fill_with_data(val)
        @shipping = obj
      end
      
    end
    
    def device=(val)
      if val.nil?
        @device = val
        return
      end

      if val.instance_of? InvoiceDevice
        @device = val
      else
        obj = InvoiceDevice.new(@client)
        obj.fill_with_data(val)
        @device = obj
      end
      
    end
    
    def external_fraud_tools=(val)
      if val.nil?
        @external_fraud_tools = val
        return
      end

      if val.instance_of? InvoiceExternalFraudTools
        @external_fraud_tools = val
      else
        obj = InvoiceExternalFraudTools.new(@client)
        obj.fill_with_data(val)
        @external_fraud_tools = obj
      end
      
    end
    

    # Initializes the Invoice object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.transaction = data.fetch(:transaction, nil)
      self.transaction_id = data.fetch(:transaction_id, nil)
      self.customer = data.fetch(:customer, nil)
      self.customer_id = data.fetch(:customer_id, nil)
      self.subscription = data.fetch(:subscription, nil)
      self.subscription_id = data.fetch(:subscription_id, nil)
      self.token = data.fetch(:token, nil)
      self.token_id = data.fetch(:token_id, nil)
      self.details = data.fetch(:details, nil)
      self.url = data.fetch(:url, nil)
      self.name = data.fetch(:name, nil)
      self.amount = data.fetch(:amount, nil)
      self.currency = data.fetch(:currency, nil)
      self.merchant_initiator_type = data.fetch(:merchant_initiator_type, nil)
      self.statement_descriptor = data.fetch(:statement_descriptor, nil)
      self.statement_descriptor_phone = data.fetch(:statement_descriptor_phone, nil)
      self.statement_descriptor_city = data.fetch(:statement_descriptor_city, nil)
      self.statement_descriptor_company = data.fetch(:statement_descriptor_company, nil)
      self.statement_descriptor_url = data.fetch(:statement_descriptor_url, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.gateway_data = data.fetch(:gateway_data, nil)
      self.return_url = data.fetch(:return_url, nil)
      self.cancel_url = data.fetch(:cancel_url, nil)
      self.webhook_url = data.fetch(:webhook_url, nil)
      self.require_backend_capture = data.fetch(:require_backend_capture, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      self.risk = data.fetch(:risk, nil)
      self.shipping = data.fetch(:shipping, nil)
      self.device = data.fetch(:device, nil)
      self.external_fraud_tools = data.fetch(:external_fraud_tools, nil)
      
    end

    # Create a new Invoice using the current client
    def new(data = {})
      Invoice.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "project": self.project,
          "project_id": self.project_id,
          "transaction": self.transaction,
          "transaction_id": self.transaction_id,
          "customer": self.customer,
          "customer_id": self.customer_id,
          "subscription": self.subscription,
          "subscription_id": self.subscription_id,
          "token": self.token,
          "token_id": self.token_id,
          "details": self.details,
          "url": self.url,
          "name": self.name,
          "amount": self.amount,
          "currency": self.currency,
          "merchant_initiator_type": self.merchant_initiator_type,
          "statement_descriptor": self.statement_descriptor,
          "statement_descriptor_phone": self.statement_descriptor_phone,
          "statement_descriptor_city": self.statement_descriptor_city,
          "statement_descriptor_company": self.statement_descriptor_company,
          "statement_descriptor_url": self.statement_descriptor_url,
          "metadata": self.metadata,
          "gateway_data": self.gateway_data,
          "return_url": self.return_url,
          "cancel_url": self.cancel_url,
          "webhook_url": self.webhook_url,
          "require_backend_capture": self.require_backend_capture,
          "sandbox": self.sandbox,
          "created_at": self.created_at,
          "risk": self.risk,
          "shipping": self.shipping,
          "device": self.device,
          "external_fraud_tools": self.external_fraud_tools,
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
      if data.include? "transaction"
        self.transaction = data["transaction"]
      end
      if data.include? "transaction_id"
        self.transaction_id = data["transaction_id"]
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
      if data.include? "details"
        self.details = data["details"]
      end
      if data.include? "url"
        self.url = data["url"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "merchant_initiator_type"
        self.merchant_initiator_type = data["merchant_initiator_type"]
      end
      if data.include? "statement_descriptor"
        self.statement_descriptor = data["statement_descriptor"]
      end
      if data.include? "statement_descriptor_phone"
        self.statement_descriptor_phone = data["statement_descriptor_phone"]
      end
      if data.include? "statement_descriptor_city"
        self.statement_descriptor_city = data["statement_descriptor_city"]
      end
      if data.include? "statement_descriptor_company"
        self.statement_descriptor_company = data["statement_descriptor_company"]
      end
      if data.include? "statement_descriptor_url"
        self.statement_descriptor_url = data["statement_descriptor_url"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "gateway_data"
        self.gateway_data = data["gateway_data"]
      end
      if data.include? "return_url"
        self.return_url = data["return_url"]
      end
      if data.include? "cancel_url"
        self.cancel_url = data["cancel_url"]
      end
      if data.include? "webhook_url"
        self.webhook_url = data["webhook_url"]
      end
      if data.include? "require_backend_capture"
        self.require_backend_capture = data["require_backend_capture"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      if data.include? "risk"
        self.risk = data["risk"]
      end
      if data.include? "shipping"
        self.shipping = data["shipping"]
      end
      if data.include? "device"
        self.device = data["device"]
      end
      if data.include? "external_fraud_tools"
        self.external_fraud_tools = data["external_fraud_tools"]
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
      self.transaction = data.fetch(:transaction, self.transaction)
      self.transaction_id = data.fetch(:transaction_id, self.transaction_id)
      self.customer = data.fetch(:customer, self.customer)
      self.customer_id = data.fetch(:customer_id, self.customer_id)
      self.subscription = data.fetch(:subscription, self.subscription)
      self.subscription_id = data.fetch(:subscription_id, self.subscription_id)
      self.token = data.fetch(:token, self.token)
      self.token_id = data.fetch(:token_id, self.token_id)
      self.details = data.fetch(:details, self.details)
      self.url = data.fetch(:url, self.url)
      self.name = data.fetch(:name, self.name)
      self.amount = data.fetch(:amount, self.amount)
      self.currency = data.fetch(:currency, self.currency)
      self.merchant_initiator_type = data.fetch(:merchant_initiator_type, self.merchant_initiator_type)
      self.statement_descriptor = data.fetch(:statement_descriptor, self.statement_descriptor)
      self.statement_descriptor_phone = data.fetch(:statement_descriptor_phone, self.statement_descriptor_phone)
      self.statement_descriptor_city = data.fetch(:statement_descriptor_city, self.statement_descriptor_city)
      self.statement_descriptor_company = data.fetch(:statement_descriptor_company, self.statement_descriptor_company)
      self.statement_descriptor_url = data.fetch(:statement_descriptor_url, self.statement_descriptor_url)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.gateway_data = data.fetch(:gateway_data, self.gateway_data)
      self.return_url = data.fetch(:return_url, self.return_url)
      self.cancel_url = data.fetch(:cancel_url, self.cancel_url)
      self.webhook_url = data.fetch(:webhook_url, self.webhook_url)
      self.require_backend_capture = data.fetch(:require_backend_capture, self.require_backend_capture)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      self.risk = data.fetch(:risk, self.risk)
      self.shipping = data.fetch(:shipping, self.shipping)
      self.device = data.fetch(:device, self.device)
      self.external_fraud_tools = data.fetch(:external_fraud_tools, self.external_fraud_tools)
      
      self
    end

    # Authorize the invoice using the given source (customer or token)
    # Params:
    # +source+:: Source used to authorization the payment. Can be a card, a token or a gateway request
    # +options+:: +Hash+ of options
    def authorize(source, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/authorize"
      data    = {
        "device" => @device, 
        "synchronous" => options.fetch(:synchronous, nil), 
        "retry_drop_liability_shift" => options.fetch(:retry_drop_liability_shift, nil), 
        "capture_amount" => options.fetch(:capture_amount, nil), 
        "enable_three_d_s_2" => options.fetch(:enable_three_d_s_2, nil), 
        "auto_capture_at" => options.fetch(:auto_capture_at, nil), 
        "source" => source
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["transaction"]
      transaction = Transaction.new(@client)
      return_values.push(transaction.fill_with_data(body))

      
      return_values[0]
    end

    # Capture the invoice using the given source (customer or token)
    # Params:
    # +source+:: Source used to authorization the payment. Can be a card, a token or a gateway request
    # +options+:: +Hash+ of options
    def capture(source, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/capture"
      data    = {
        "device" => @device, 
        "authorize_only" => options.fetch(:authorize_only, nil), 
        "synchronous" => options.fetch(:synchronous, nil), 
        "retry_drop_liability_shift" => options.fetch(:retry_drop_liability_shift, nil), 
        "capture_amount" => options.fetch(:capture_amount, nil), 
        "auto_capture_at" => options.fetch(:auto_capture_at, nil), 
        "enable_three_d_s_2" => options.fetch(:enable_three_d_s_2, nil), 
        "source" => source
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["transaction"]
      transaction = Transaction.new(@client)
      return_values.push(transaction.fill_with_data(body))

      
      return_values[0]
    end

    # Get the customer linked to the invoice.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_customer(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/customers"
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

    # Assign a customer to the invoice.
    # Params:
    # +customer_id+:: ID of the customer to be linked to the invoice
    # +options+:: +Hash+ of options
    def assign_customer(customer_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/customers"
      data    = {
        "customer_id" => customer_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer"]
      customer = Customer.new(@client)
      return_values.push(customer.fill_with_data(body))

      
      return_values[0]
    end

    # Initiate a 3-D Secure authentication
    # Params:
    # +source+:: Source used to initiate the 3-D Secure authentication. Can be a card, or a token representing a card
    # +options+:: +Hash+ of options
    def initiate_three_d_s(source, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/three-d-s"
      data    = {
        "enable_three_d_s_2" => options.fetch(:enable_three_d_s_2, nil), 
        "source" => source
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer_action"]
      customer_action = CustomerAction.new(@client)
      return_values.push(customer_action.fill_with_data(body))

      
      return_values[0]
    end

    # Get the transaction of the invoice.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_transaction(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/transactions"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["transaction"]
      transaction = Transaction.new(@client)
      return_values.push(transaction.fill_with_data(body))

      
      return_values[0]
    end

    # Void the invoice
    # Params:
    # +options+:: +Hash+ of options
    def void(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/void"
      data    = {

      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["transaction"]
      transaction = Transaction.new(@client)
      return_values.push(transaction.fill_with_data(body))

      
      return_values[0]
    end

    # Get all the invoices.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['invoices']
        tmp = Invoice.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Create a new invoice.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices"
      data    = {
        "customer_id" => @customer_id, 
        "name" => @name, 
        "amount" => @amount, 
        "currency" => @currency, 
        "metadata" => @metadata, 
        "details" => @details, 
        "gateway_data" => @gateway_data, 
        "merchant_initiator_type" => @merchant_initiator_type, 
        "statement_descriptor" => @statement_descriptor, 
        "statement_descriptor_phone" => @statement_descriptor_phone, 
        "statement_descriptor_city" => @statement_descriptor_city, 
        "statement_descriptor_company" => @statement_descriptor_company, 
        "statement_descriptor_url" => @statement_descriptor_url, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url, 
        "webhook_url" => @webhook_url, 
        "risk" => @risk, 
        "shipping" => @shipping, 
        "device" => @device, 
        "require_backend_capture" => @require_backend_capture, 
        "external_fraud_tools" => @external_fraud_tools
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["invoice"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find an invoice by its ID.
    # Params:
    # +invoice_id+:: ID of the invoice
    # +options+:: +Hash+ of options
    def find(invoice_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(invoice_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["invoice"]
      
      
      obj = Invoice.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
