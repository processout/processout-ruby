# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Subscription
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :plan
    attr_reader :plan_id
    attr_reader :discounts
    attr_reader :addons
    attr_reader :transactions
    attr_reader :customer
    attr_reader :customer_id
    attr_reader :token
    attr_reader :token_id
    attr_reader :url
    attr_reader :name
    attr_reader :amount
    attr_reader :billable_amount
    attr_reader :discounted_amount
    attr_reader :addons_amount
    attr_reader :currency
    attr_reader :metadata
    attr_reader :interval
    attr_reader :trial_end_at
    attr_reader :activated
    attr_reader :active
    attr_reader :cancel_at
    attr_reader :canceled
    attr_reader :cancellation_reason
    attr_reader :pending_cancellation
    attr_reader :return_url
    attr_reader :cancel_url
    attr_reader :unpaid_state
    attr_reader :sandbox
    attr_reader :created_at
    attr_reader :activated_at
    attr_reader :iterate_at

    
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
    
    def plan=(val)
      if val.nil?
        @plan = val
        return
      end

      if val.instance_of? Plan
        @plan = val
      else
        obj = Plan.new(@client)
        obj.fill_with_data(val)
        @plan = obj
      end
      
    end
    
    def plan_id=(val)
      @plan_id = val
    end
    
    def discounts=(val)
      if val.nil?
        @discounts = []
        return
      end

      if val.length > 0 and val[0].instance_of? Discount
        @discounts = val
      else
        l = Array.new
        for v in val
          obj = Discount.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @discounts = l
      end
      
    end
    
    def addons=(val)
      if val.nil?
        @addons = []
        return
      end

      if val.length > 0 and val[0].instance_of? Addon
        @addons = val
      else
        l = Array.new
        for v in val
          obj = Addon.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @addons = l
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
    
    def url=(val)
      @url = val
    end
    
    def name=(val)
      @name = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def billable_amount=(val)
      @billable_amount = val
    end
    
    def discounted_amount=(val)
      @discounted_amount = val
    end
    
    def addons_amount=(val)
      @addons_amount = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def interval=(val)
      @interval = val
    end
    
    def trial_end_at=(val)
      @trial_end_at = val
    end
    
    def activated=(val)
      @activated = val
    end
    
    def active=(val)
      @active = val
    end
    
    def cancel_at=(val)
      @cancel_at = val
    end
    
    def canceled=(val)
      @canceled = val
    end
    
    def cancellation_reason=(val)
      @cancellation_reason = val
    end
    
    def pending_cancellation=(val)
      @pending_cancellation = val
    end
    
    def return_url=(val)
      @return_url = val
    end
    
    def cancel_url=(val)
      @cancel_url = val
    end
    
    def unpaid_state=(val)
      @unpaid_state = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    
    def activated_at=(val)
      @activated_at = val
    end
    
    def iterate_at=(val)
      @iterate_at = val
    end
    

    # Initializes the Subscription object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.plan = data.fetch(:plan, nil)
      self.plan_id = data.fetch(:plan_id, nil)
      self.discounts = data.fetch(:discounts, nil)
      self.addons = data.fetch(:addons, nil)
      self.transactions = data.fetch(:transactions, nil)
      self.customer = data.fetch(:customer, nil)
      self.customer_id = data.fetch(:customer_id, nil)
      self.token = data.fetch(:token, nil)
      self.token_id = data.fetch(:token_id, nil)
      self.url = data.fetch(:url, nil)
      self.name = data.fetch(:name, nil)
      self.amount = data.fetch(:amount, nil)
      self.billable_amount = data.fetch(:billable_amount, nil)
      self.discounted_amount = data.fetch(:discounted_amount, nil)
      self.addons_amount = data.fetch(:addons_amount, nil)
      self.currency = data.fetch(:currency, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.interval = data.fetch(:interval, nil)
      self.trial_end_at = data.fetch(:trial_end_at, nil)
      self.activated = data.fetch(:activated, nil)
      self.active = data.fetch(:active, nil)
      self.cancel_at = data.fetch(:cancel_at, nil)
      self.canceled = data.fetch(:canceled, nil)
      self.cancellation_reason = data.fetch(:cancellation_reason, nil)
      self.pending_cancellation = data.fetch(:pending_cancellation, nil)
      self.return_url = data.fetch(:return_url, nil)
      self.cancel_url = data.fetch(:cancel_url, nil)
      self.unpaid_state = data.fetch(:unpaid_state, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      self.activated_at = data.fetch(:activated_at, nil)
      self.iterate_at = data.fetch(:iterate_at, nil)
      
    end

    # Create a new Subscription using the current client
    def new(data = {})
      Subscription.new(@client, data)
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
      if data.include? "plan"
        self.plan = data["plan"]
      end
      if data.include? "plan_id"
        self.plan_id = data["plan_id"]
      end
      if data.include? "discounts"
        self.discounts = data["discounts"]
      end
      if data.include? "addons"
        self.addons = data["addons"]
      end
      if data.include? "transactions"
        self.transactions = data["transactions"]
      end
      if data.include? "customer"
        self.customer = data["customer"]
      end
      if data.include? "customer_id"
        self.customer_id = data["customer_id"]
      end
      if data.include? "token"
        self.token = data["token"]
      end
      if data.include? "token_id"
        self.token_id = data["token_id"]
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
      if data.include? "billable_amount"
        self.billable_amount = data["billable_amount"]
      end
      if data.include? "discounted_amount"
        self.discounted_amount = data["discounted_amount"]
      end
      if data.include? "addons_amount"
        self.addons_amount = data["addons_amount"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "interval"
        self.interval = data["interval"]
      end
      if data.include? "trial_end_at"
        self.trial_end_at = data["trial_end_at"]
      end
      if data.include? "activated"
        self.activated = data["activated"]
      end
      if data.include? "active"
        self.active = data["active"]
      end
      if data.include? "cancel_at"
        self.cancel_at = data["cancel_at"]
      end
      if data.include? "canceled"
        self.canceled = data["canceled"]
      end
      if data.include? "cancellation_reason"
        self.cancellation_reason = data["cancellation_reason"]
      end
      if data.include? "pending_cancellation"
        self.pending_cancellation = data["pending_cancellation"]
      end
      if data.include? "return_url"
        self.return_url = data["return_url"]
      end
      if data.include? "cancel_url"
        self.cancel_url = data["cancel_url"]
      end
      if data.include? "unpaid_state"
        self.unpaid_state = data["unpaid_state"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      if data.include? "activated_at"
        self.activated_at = data["activated_at"]
      end
      if data.include? "iterate_at"
        self.iterate_at = data["iterate_at"]
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
      self.plan = data.fetch(:plan, self.plan)
      self.plan_id = data.fetch(:plan_id, self.plan_id)
      self.discounts = data.fetch(:discounts, self.discounts)
      self.addons = data.fetch(:addons, self.addons)
      self.transactions = data.fetch(:transactions, self.transactions)
      self.customer = data.fetch(:customer, self.customer)
      self.customer_id = data.fetch(:customer_id, self.customer_id)
      self.token = data.fetch(:token, self.token)
      self.token_id = data.fetch(:token_id, self.token_id)
      self.url = data.fetch(:url, self.url)
      self.name = data.fetch(:name, self.name)
      self.amount = data.fetch(:amount, self.amount)
      self.billable_amount = data.fetch(:billable_amount, self.billable_amount)
      self.discounted_amount = data.fetch(:discounted_amount, self.discounted_amount)
      self.addons_amount = data.fetch(:addons_amount, self.addons_amount)
      self.currency = data.fetch(:currency, self.currency)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.interval = data.fetch(:interval, self.interval)
      self.trial_end_at = data.fetch(:trial_end_at, self.trial_end_at)
      self.activated = data.fetch(:activated, self.activated)
      self.active = data.fetch(:active, self.active)
      self.cancel_at = data.fetch(:cancel_at, self.cancel_at)
      self.canceled = data.fetch(:canceled, self.canceled)
      self.cancellation_reason = data.fetch(:cancellation_reason, self.cancellation_reason)
      self.pending_cancellation = data.fetch(:pending_cancellation, self.pending_cancellation)
      self.return_url = data.fetch(:return_url, self.return_url)
      self.cancel_url = data.fetch(:cancel_url, self.cancel_url)
      self.unpaid_state = data.fetch(:unpaid_state, self.unpaid_state)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      self.activated_at = data.fetch(:activated_at, self.activated_at)
      self.iterate_at = data.fetch(:iterate_at, self.iterate_at)
      
      self
    end

    # Get the addons applied to the subscription.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_addons(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/addons"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['addons']
        tmp = Addon.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a subscription's addon by its ID.
    # Params:
    # +addon_id+:: ID of the addon
    # +options+:: +Hash+ of options
    def find_addon(addon_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/addons/" + CGI.escape(addon_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["addon"]
      addon = Addon.new(@client)
      return_values.push(addon.fill_with_data(body))

      
      return_values[0]
    end

    # Remove an addon applied to a subscription.
    # Params:
    # +addon_id+:: ID of the addon or plan to be removed from the subscription
    # +options+:: +Hash+ of options
    def remove_addon(addon_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/addons/" + CGI.escape(addon_id) + ""
      data    = {
        "prorate" => options.fetch(:prorate, nil), 
        "proration_date" => options.fetch(:proration_date, nil), 
        "preview" => options.fetch(:preview, nil)
      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    # Get the customer owning the subscription.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_customer(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/customers"
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

    # Get the discounts applied to the subscription.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_discounts(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['discounts']
        tmp = Discount.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a subscription's discount by its ID.
    # Params:
    # +discount_id+:: ID of the discount
    # +options+:: +Hash+ of options
    def find_discount(discount_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts/" + CGI.escape(discount_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      discount = Discount.new(@client)
      return_values.push(discount.fill_with_data(body))

      
      return_values[0]
    end

    # Remove a discount applied to a subscription.
    # Params:
    # +discount_id+:: ID of the discount or coupon to be removed from the subscription
    # +options+:: +Hash+ of options
    def remove_discount(discount_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts/" + CGI.escape(discount_id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    # Get the subscriptions past transactions.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_transactions(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/transactions"
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

    # Get all the subscriptions.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions"
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

    # Create a new subscription for the given customer.
    # Params:
    # +customer_id+:: ID of the customer
    # +options+:: +Hash+ of options
    def create(customer_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions"
      data    = {
        "plan_id" => @plan_id, 
        "cancel_at" => @cancel_at, 
        "name" => @name, 
        "amount" => @amount, 
        "currency" => @currency, 
        "metadata" => @metadata, 
        "interval" => @interval, 
        "trial_end_at" => @trial_end_at, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url, 
        "source" => options.fetch(:source, nil), 
        "coupon_id" => options.fetch(:coupon_id, nil), 
        "customer_id" => customer_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find a subscription by its ID.
    # Params:
    # +subscription_id+:: ID of the subscription
    # +options+:: +Hash+ of options
    def find(subscription_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      obj = Subscription.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated subscription attributes.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        "plan_id" => @plan_id, 
        "name" => @name, 
        "amount" => @amount, 
        "interval" => @interval, 
        "trial_end_at" => @trial_end_at, 
        "metadata" => @metadata, 
        "coupon_id" => options.fetch(:coupon_id, nil), 
        "source" => options.fetch(:source, nil), 
        "prorate" => options.fetch(:prorate, nil), 
        "proration_date" => options.fetch(:proration_date, nil), 
        "preview" => options.fetch(:preview, nil)
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Cancel a subscription. The reason may be provided as well.
    # Params:
    # +cancellation_reason+:: Cancellation reason
    # +options+:: +Hash+ of options
    def cancel(cancellation_reason, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        "cancel_at" => @cancel_at, 
        "cancel_at_end" => options.fetch(:cancel_at_end, nil), 
        "cancellation_reason" => cancellation_reason
      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
