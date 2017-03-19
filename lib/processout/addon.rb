# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Addon
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :subscription
    attr_reader :subscription_id
    attr_reader :plan
    attr_reader :plan_id
    attr_reader :type
    attr_reader :name
    attr_reader :amount
    attr_reader :quantity
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
    
    def type=(val)
      @type = val
    end
    
    def name=(val)
      @name = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def quantity=(val)
      @quantity = val
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
    

    # Initializes the Addon object
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
      self.plan = data.fetch(:plan, nil)
      self.plan_id = data.fetch(:plan_id, nil)
      self.type = data.fetch(:type, nil)
      self.name = data.fetch(:name, nil)
      self.amount = data.fetch(:amount, nil)
      self.quantity = data.fetch(:quantity, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Addon using the current client
    def new(data = {})
      Addon.new(@client, data)
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
      if data.include? "plan"
        self.plan = data["plan"]
      end
      if data.include? "plan_id"
        self.plan_id = data["plan_id"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "quantity"
        self.quantity = data["quantity"]
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
      self.plan = data.fetch(:plan, self.plan)
      self.plan_id = data.fetch(:plan_id, self.plan_id)
      self.type = data.fetch(:type, self.type)
      self.name = data.fetch(:name, self.name)
      self.amount = data.fetch(:amount, self.amount)
      self.quantity = data.fetch(:quantity, self.quantity)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get the addons applied to the subscription.
    # Params:
    # +subscription_id+:: ID of the subscription
    # +options+:: +Hash+ of options
    def fetch_subscription_addons(subscription_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + "/addons"
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

    # Create a new addon to the given subscription ID.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@subscription_id) + "/addons"
      data    = {
        "plan_id" => @plan_id, 
        "type" => @type, 
        "name" => @name, 
        "amount" => @amount, 
        "quantity" => @quantity, 
        "metadata" => @metadata, 
        "prorate" => options.fetch(:prorate, nil), 
        "proration_date" => options.fetch(:proration_date, nil), 
        "preview" => options.fetch(:preview, nil)
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["addon"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find a subscription's addon by its ID.
    # Params:
    # +subscription_id+:: ID of the subscription on which the addon was applied
    # +addon_id+:: ID of the addon
    # +options+:: +Hash+ of options
    def find(subscription_id, addon_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + "/addons/" + CGI.escape(addon_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["addon"]
      
      
      obj = Addon.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated addon attributes.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@subscription_id) + "/addons/" + CGI.escape(@id) + ""
      data    = {
        "plan_id" => @plan_id, 
        "type" => @type, 
        "name" => @name, 
        "amount" => @amount, 
        "quantity" => @quantity, 
        "metadata" => @metadata, 
        "prorate" => options.fetch(:prorate, nil), 
        "proration_date" => options.fetch(:proration_date, nil), 
        "preview" => options.fetch(:preview, nil), 
        "increment_quantity_by" => options.fetch(:increment_quantity_by, nil)
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["addon"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Delete an addon applied to a subscription.
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@subscription_id) + "/addons/" + CGI.escape(@id) + ""
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

    
  end
end
