# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Plan
    
    attr_reader :id
    attr_reader :project
    attr_reader :name
    attr_reader :amount
    attr_reader :currency
    attr_reader :metadata
    attr_reader :interval
    attr_reader :trial_period
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
    
    def trial_period=(val)
      @trial_period = val
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
    

    # Initializes the Plan object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @name = data.fetch(:name, "")
      @amount = data.fetch(:amount, "")
      @currency = data.fetch(:currency, "")
      @metadata = data.fetch(:metadata, Hash.new)
      @interval = data.fetch(:interval, "")
      @trial_period = data.fetch(:trial_period, "0d")
      @return_url = data.fetch(:return_url, "")
      @cancel_url = data.fetch(:cancel_url, "")
      @sandbox = data.fetch(:sandbox, false)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Plan using the current client
    def new(data = {})
      Plan.new(@client, data)
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
      if data.include? "trial_period"
        @trial_period = data["trial_period"]
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
      
      self
    end

    # Get all the plans.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      request = Request.new(@client)
      path    = "/plans"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['plans']
        tmp = Plan.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Create a new plan.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      request = Request.new(@client)
      path    = "/plans"
      data    = {
        "id" => @id, 
        "name" => @name, 
        "amount" => @amount, 
        "currency" => @currency, 
        "interval" => @interval, 
        "trial_period" => @trial_period, 
        "metadata" => @metadata, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["plan"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find a plan by its ID.
    # Params:
    # +plan_id+:: ID of the plan
    # +options+:: +Hash+ of options
    def find(plan_id, options = {})
      request = Request.new(@client)
      path    = "/plans/" + CGI.escape(plan_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["plan"]
      
      
      obj = Plan.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Update the plan. This action won't affect subscriptions already linked to this plan.
    # Params:
    # +options+:: +Hash+ of options
    def update(options = {})
      request = Request.new(@client)
      path    = "/plans/" + CGI.escape(@id) + ""
      data    = {
        "name" => @name, 
        "trial_period" => @trial_period, 
        "metadata" => @metadata, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["plan"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Delete a plan. Subscriptions linked to this plan won't be affected.
    # Params:
    # +options+:: +Hash+ of options
    def end(options = {})
      request = Request.new(@client)
      path    = "/plans/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
