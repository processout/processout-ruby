# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Discount
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :subscription
    attr_reader :subscription_id
    attr_reader :coupon
    attr_reader :coupon_id
    attr_reader :name
    attr_reader :amount
    attr_reader :percent
    attr_reader :expires_at
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
    
    def coupon=(val)
      if val.nil?
        @coupon = val
        return
      end

      if val.instance_of? Coupon
        @coupon = val
      else
        obj = Coupon.new(@client)
        obj.fill_with_data(val)
        @coupon = obj
      end
      
    end
    
    def coupon_id=(val)
      @coupon_id = val
    end
    
    def name=(val)
      @name = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def percent=(val)
      @percent = val
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
      self.project_id = data.fetch(:project_id, nil)
      self.subscription = data.fetch(:subscription, nil)
      self.subscription_id = data.fetch(:subscription_id, nil)
      self.coupon = data.fetch(:coupon, nil)
      self.coupon_id = data.fetch(:coupon_id, nil)
      self.name = data.fetch(:name, nil)
      self.amount = data.fetch(:amount, nil)
      self.percent = data.fetch(:percent, nil)
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
      if data.include? "project_id"
        self.project_id = data["project_id"]
      end
      if data.include? "subscription"
        self.subscription = data["subscription"]
      end
      if data.include? "subscription_id"
        self.subscription_id = data["subscription_id"]
      end
      if data.include? "coupon"
        self.coupon = data["coupon"]
      end
      if data.include? "coupon_id"
        self.coupon_id = data["coupon_id"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "percent"
        self.percent = data["percent"]
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
      self.subscription = data.fetch(:subscription, self.subscription)
      self.subscription_id = data.fetch(:subscription_id, self.subscription_id)
      self.coupon = data.fetch(:coupon, self.coupon)
      self.coupon_id = data.fetch(:coupon_id, self.coupon_id)
      self.name = data.fetch(:name, self.name)
      self.amount = data.fetch(:amount, self.amount)
      self.percent = data.fetch(:percent, self.percent)
      self.expires_at = data.fetch(:expires_at, self.expires_at)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get the discounts applied to the subscription.
    # Params:
    # +subscription_id+:: ID of the subscription
    # +options+:: +Hash+ of options
    def fetch_subscription_discounts(subscription_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + "/discounts"
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

    # Create a new discount for the given subscription ID.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@subscription_id) + "/discounts"
      data    = {
        "coupon_id" => @coupon_id, 
        "name" => @name, 
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

    # Delete a discount applied to a subscription.
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@subscription_id) + "/discounts/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
