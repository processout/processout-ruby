# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Invoice
    
    attr_reader :id
    attr_reader :project
    attr_reader :transaction
    attr_reader :customer
    attr_reader :subscription
    attr_reader :url
    attr_reader :name
    attr_reader :amount
    attr_reader :currency
    attr_reader :metadata
    attr_reader :request_email
    attr_reader :request_shipping
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
    
    def transaction=(val)
      if val.instance_of? Transaction
        @transaction = val
      else
        obj = Transaction.new(@client)
        obj.fill_with_data(val)
        @transaction = obj
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
    
    def metadata=(val)
      @metadata = val
    end
    
    def request_email=(val)
      @request_email = val
    end
    
    def request_shipping=(val)
      @request_shipping = val
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
    

    # Initializes the Invoice object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @transaction = data.fetch(:transaction, nil)
      @customer = data.fetch(:customer, nil)
      @subscription = data.fetch(:subscription, nil)
      @url = data.fetch(:url, "")
      @name = data.fetch(:name, "")
      @amount = data.fetch(:amount, "")
      @currency = data.fetch(:currency, "")
      @metadata = data.fetch(:metadata, Hash.new)
      @request_email = data.fetch(:request_email, false)
      @request_shipping = data.fetch(:request_shipping, false)
      @return_url = data.fetch(:return_url, "")
      @cancel_url = data.fetch(:cancel_url, "")
      @sandbox = data.fetch(:sandbox, false)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Invoice using the current client
    def new(data = {})
      Invoice.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        self.id = data["id"]
      end
      if data.include? "project"
        self.project = data["project"]
      end
      if data.include? "transaction"
        self.transaction = data["transaction"]
      end
      if data.include? "customer"
        self.customer = data["customer"]
      end
      if data.include? "subscription"
        self.subscription = data["subscription"]
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
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "request_email"
        self.request_email = data["request_email"]
      end
      if data.include? "request_shipping"
        self.request_shipping = data["request_shipping"]
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

    # Authorize the invoice using the given source (customer or token)
    # Params:
    # +source+:: Source used to authorization the payment. Can be a card, a token or a gateway request
    # +options+:: +Hash+ of options
    def authorize(source, options = {})
      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/authorize"
      data    = {
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
      request = Request.new(@client)
      path    = "/invoices/" + CGI.escape(@id) + "/capture"
      data    = {
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

    # Get the transaction of the invoice.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_transaction(options = {})
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
      request = Request.new(@client)
      path    = "/invoices"
      data    = {
        "name" => @name, 
        "amount" => @amount, 
        "currency" => @currency, 
        "metadata" => @metadata, 
        "request_email" => @request_email, 
        "request_shipping" => @request_shipping, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["invoice"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Create a new invoice for the given customer ID.
    # Params:
    # +customer_id+:: ID of the customer
    # +options+:: +Hash+ of options
    def create_for_customer(customer_id, options = {})
      request = Request.new(@client)
      path    = "/invoices"
      data    = {
        "name" => @name, 
        "amount" => @amount, 
        "currency" => @currency, 
        "metadata" => @metadata, 
        "request_email" => @request_email, 
        "request_shipping" => @request_shipping, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url, 
        "customer_id" => customer_id
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
