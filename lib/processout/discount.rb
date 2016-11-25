# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Discount
    
    attr_reader :id
    attr_reader :project
    attr_reader :subscription
    attr_reader :coupon
    attr_reader :amount
    attr_reader :expires_at
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
    
    def subscription=(val)
      if val.instance_of? Subscription
        @subscription = val
      else
        obj = Subscription.new(@client)
        obj.fill_with_data(val)
        @subscription = obj
      end
      
    end
    
    def coupon=(val)
      if val.instance_of? Coupon
        @coupon = val
      else
        obj = Coupon.new(@client)
        obj.fill_with_data(val)
        @coupon = obj
      end
      
    end
    
    def amount=(val)
      @amount = val
    end
    
    def expires_at=(val)
      @expires_at = val
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
    

    # Initializes the Discount object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.subscription = data.fetch(:subscription, nil)
      self.coupon = data.fetch(:coupon, nil)
      self.amount = data.fetch(:amount, nil)
      self.expires_at = data.fetch(:expires_at, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Discount using the current client
    def new(data = {})
      Discount.new(@client, data)
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
      if data.include? "subscription"
        self.subscription = data["subscription"]
      end
      if data.include? "coupon"
        self.coupon = data["coupon"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "expires_at"
        self.expires_at = data["expires_at"]
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

    # Prefills the object with the data passed as Parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.id = data.fetch(:id, self.id)
      self.project = data.fetch(:project, self.project)
      self.subscription = data.fetch(:subscription, self.subscription)
      self.coupon = data.fetch(:coupon, self.coupon)
      self.amount = data.fetch(:amount, self.amount)
      self.expires_at = data.fetch(:expires_at, self.expires_at)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Apply a new discount to the given subscription ID.
    # Params:
    # +subscription_id+:: ID of the subscription
    # +options+:: +Hash+ of options
    def apply(subscription_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + "/discounts"
      data    = {
        "amount" => @amount, 
        "expires_at" => @expires_at, 
        "metadata" => @metadata
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Apply a new discount on the subscription from a coupon ID.
    # Params:
    # +subscription_id+:: ID of the subscription
    # +coupon_id+:: ID of the coupon
    # +options+:: +Hash+ of options
    def apply_coupon(subscription_id, coupon_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + "/discounts"
      data    = {
        "coupon_id" => coupon_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      
      
      obj = Discount.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find a subscription's discount by its ID.
    # Params:
    # +subscription_id+:: ID of the subscription on which the discount was applied
    # +discount_id+:: ID of the discount
    # +options+:: +Hash+ of options
    def find(subscription_id, discount_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + "/discounts/" + CGI.escape(discount_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      
      
      obj = Discount.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
