# The content of this file was automatically generated

require "cgi"
require_relative "networking/request"
require_relative "networking/response"

module ProcessOut
  class Subscription
    
    attr_reader :id
    attr_reader :project
    attr_reader :plan
    attr_reader :customer
    attr_reader :token
    attr_reader :url
    attr_reader :name
    attr_reader :amount
    attr_reader :currency
    attr_reader :metadata
    attr_reader :interval
    attr_reader :trial_end_at
    attr_reader :activated
    attr_reader :active
    attr_reader :canceled
    attr_reader :cancellation_reason
    attr_reader :pending_cancellation
    attr_reader :cancel_at
    attr_reader :return_url
    attr_reader :cancel_url
    attr_reader :sandbox
    attr_reader :created_at
    attr_reader :activated_at
    attr_reader :iterate_at

    
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
    
    def plan=(val)
      if val.instance_of? Plan
        @plan = val
      else
        obj = Plan.new(@client)
        obj.fill_with_data(val)
        @plan = obj
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
    
    def canceled=(val)
      @canceled = val
    end
    
    def cancellation_reason=(val)
      @cancellation_reason = val
    end
    
    def pending_cancellation=(val)
      @pending_cancellation = val
    end
    
    def cancel_at=(val)
      @cancel_at = val
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
    
    def activated_at=(val)
      @activated_at = val
    end
    
    def iterate_at=(val)
      @iterate_at = val
    end
    

    # Initializes the Subscription object
    # Params:
    # +client+:: +ProcessOut+ client instance
    def initialize(client)
      @client = client

      @id = ""
      @project = nil
      @plan = nil
      @customer = nil
      @token = nil
      @url = ""
      @name = ""
      @amount = ""
      @currency = ""
      @metadata = Hash.new
      @interval = ""
      @trial_end_at = ""
      @activated = false
      @active = false
      @canceled = false
      @cancellation_reason = ""
      @pending_cancellation = false
      @cancel_at = ""
      @return_url = ""
      @cancel_url = ""
      @sandbox = false
      @created_at = ""
      @activated_at = ""
      @iterate_at = ""
      
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
      if data.include? "plan"
        @plan = data["plan"]
      end
      if data.include? "customer"
        @customer = data["customer"]
      end
      if data.include? "token"
        @token = data["token"]
      end
      if data.include? "url"
        @url = data["url"]
      end
      if data.include? "name"
        @name = data["name"]
      end
      if data.include? "amount"
        @amount = data["amount"]
      end
      if data.include? "currency"
        @currency = data["currency"]
      end
      if data.include? "metadata"
        @metadata = data["metadata"]
      end
      if data.include? "interval"
        @interval = data["interval"]
      end
      if data.include? "trial_end_at"
        @trial_end_at = data["trial_end_at"]
      end
      if data.include? "activated"
        @activated = data["activated"]
      end
      if data.include? "active"
        @active = data["active"]
      end
      if data.include? "canceled"
        @canceled = data["canceled"]
      end
      if data.include? "cancellation_reason"
        @cancellation_reason = data["cancellation_reason"]
      end
      if data.include? "pending_cancellation"
        @pending_cancellation = data["pending_cancellation"]
      end
      if data.include? "cancel_at"
        @cancel_at = data["cancel_at"]
      end
      if data.include? "return_url"
        @return_url = data["return_url"]
      end
      if data.include? "cancel_url"
        @cancel_url = data["cancel_url"]
      end
      if data.include? "sandbox"
        @sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        @created_at = data["created_at"]
      end
      if data.include? "activated_at"
        @activated_at = data["activated_at"]
      end
      if data.include? "iterate_at"
        @iterate_at = data["iterate_at"]
      end
      
      self
    end

    # Get the customer owning the subscription.
    # Params:
    # +options+:: +Hash+ of options
    def customer(options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/customers"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer"]
      customer = Customer(self._client)
      return_values.push(customer.fill_with_data(body))

      
      return_values[0]
    end

    # Get the discounts applied to the subscription.
    # Params:
    # +options+:: +Hash+ of options
    def discounts(options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['discounts']
        tmp = Discount(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Remove a discount applied to a subscription.
    # Params:
    # +discount_id+:: ID of the discount or coupon to be removed from the subscription
    # +options+:: +Hash+ of options
    def remove_discount(discount_id, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts/" + CGI.escape(discount_id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Get the subscriptions past transactions.
    # Params:
    # +options+:: +Hash+ of options
    def transactions(options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/transactions"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['transactions']
        tmp = Transaction(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Get all the subscriptions.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = nil)
      request = Request.new(@client)
      path    = "/subscriptions"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['subscriptions']
        tmp = Subscription(@client)
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
    def create(customer_id, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions"
      data    = {
        "cancel_at": @cancel_at, 
        "name": @name, 
        "amount": @amount, 
        "currency": @currency, 
        "metadata": @metadata, 
        "interval": @interval, 
        "trial_end_at": @trial_end_at, 
        "return_url": @return_url, 
        "cancel_url": @cancel_url, 
        'customer_id': customer_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Create a new subscription for the customer from the given plan ID.
    # Params:
    # +customer_id+:: ID of the customer
    # +plan_id+:: ID of the plan
    # +options+:: +Hash+ of options
    def create_from_plan(customer_id, plan_id, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions"
      data    = {
        "cancel_at": @cancel_at, 
        "name": @name, 
        "amount": @amount, 
        "currency": @currency, 
        "metadata": @metadata, 
        "interval": @interval, 
        "trial_end_at": @trial_end_at, 
        "return_url": @return_url, 
        "cancel_url": @cancel_url, 
        'customer_id': customer_id, 
        'plan_id': plan_id
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
    def find(subscription_id, options = nil)
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

    # Update the subscription.
    # Params:
    # +prorate+:: Define if proration should be done when updating the plan
    # +options+:: +Hash+ of options
    def update(prorate, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        "trial_end_at": @trial_end_at, 
        'prorate': prorate
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Update the subscription's plan.
    # Params:
    # +plan_id+:: ID of the new plan to be applied on the subscription
    # +prorate+:: Define if proration should be done when updating the plan
    # +options+:: +Hash+ of options
    def update_plan(plan_id, prorate, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        'plan_id': plan_id, 
        'prorate': prorate
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Apply a source to the subscription to activate or update the subscription's source.
    # Params:
    # +source+:: Source to be applied on the subscription and used to pay future invoices. Can be a card, a token or a gateway request
    # +options+:: +Hash+ of options
    def apply_source(source, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        'source': source
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
    def cancel(cancellation_reason, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        'cancellation_reason': cancellation_reason
      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Schedule the cancellation of the subscription. The reason may be provided as well.
    # Params:
    # +cancel_at+:: Cancellation date, in the form of a string
    # +cancellation_reason+:: Cancellation reason
    # +options+:: +Hash+ of options
    def cancel_at(cancel_at, cancellation_reason, options = nil)
      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        'cancel_at': cancel_at, 
        'cancellation_reason': cancellation_reason
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
