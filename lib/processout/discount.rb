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

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @subscription = data.fetch(:subscription, nil)
      @coupon = data.fetch(:coupon, nil)
      @amount = data.fetch(:amount, "")
      @expires_at = data.fetch(:expires_at, "")
      @metadata = data.fetch(:metadata, Hash.new)
      @sandbox = data.fetch(:sandbox, false)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Discount using the current client
    def new(data = {})
      Discount.new(@client, data)
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
      if data.include? "subscription"
        @subscription = data["subscription"]
      end
      if data.include? "coupon"
        @coupon = data["coupon"]
      end
      if data.include? "amount"
        @amount = data["amount"]
      end
      if data.include? "expires_at"
        @expires_at = data["expires_at"]
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

    # Apply a new discount to the given subscription ID.
    # Params:
    # +subscription_id+:: ID of the subscription
    # +options+:: +Hash+ of options
    def apply(subscription_id, options = {})
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
