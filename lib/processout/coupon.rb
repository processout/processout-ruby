# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Coupon
    
    attr_reader :id
    attr_reader :project
    attr_reader :name
    attr_reader :amount_off
    attr_reader :percent_off
    attr_reader :currency
    attr_reader :max_redemptions
    attr_reader :expires_at
    attr_reader :metadata
    attr_reader :iteration_count
    attr_reader :redeemed_number
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
    
    def amount_off=(val)
      @amount_off = val
    end
    
    def percent_off=(val)
      @percent_off = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def max_redemptions=(val)
      @max_redemptions = val
    end
    
    def expires_at=(val)
      @expires_at = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def iteration_count=(val)
      @iteration_count = val
    end
    
    def redeemed_number=(val)
      @redeemed_number = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Coupon object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.name = data.fetch(:name, nil)
      self.amount_off = data.fetch(:amount_off, nil)
      self.percent_off = data.fetch(:percent_off, nil)
      self.currency = data.fetch(:currency, nil)
      self.max_redemptions = data.fetch(:max_redemptions, nil)
      self.expires_at = data.fetch(:expires_at, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.iteration_count = data.fetch(:iteration_count, nil)
      self.redeemed_number = data.fetch(:redeemed_number, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Coupon using the current client
    def new(data = {})
      Coupon.new(@client, data)
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
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "amount_off"
        self.amount_off = data["amount_off"]
      end
      if data.include? "percent_off"
        self.percent_off = data["percent_off"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "max_redemptions"
        self.max_redemptions = data["max_redemptions"]
      end
      if data.include? "expires_at"
        self.expires_at = data["expires_at"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "iteration_count"
        self.iteration_count = data["iteration_count"]
      end
      if data.include? "redeemed_number"
        self.redeemed_number = data["redeemed_number"]
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
      self.name = data.fetch(:name, self.name)
      self.amount_off = data.fetch(:amount_off, self.amount_off)
      self.percent_off = data.fetch(:percent_off, self.percent_off)
      self.currency = data.fetch(:currency, self.currency)
      self.max_redemptions = data.fetch(:max_redemptions, self.max_redemptions)
      self.expires_at = data.fetch(:expires_at, self.expires_at)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.iteration_count = data.fetch(:iteration_count, self.iteration_count)
      self.redeemed_number = data.fetch(:redeemed_number, self.redeemed_number)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get all the coupons.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/coupons"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['coupons']
        tmp = Coupon.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Create a new coupon.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/coupons"
      data    = {
        "id" => @id, 
        "amount_off" => @amount_off, 
        "percent_off" => @percent_off, 
        "currency" => @currency, 
        "iteration_count" => @iteration_count, 
        "max_redemptions" => @max_redemptions, 
        "expires_at" => @expires_at, 
        "metadata" => @metadata
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["coupon"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find a coupon by its ID.
    # Params:
    # +coupon_id+:: ID of the coupon
    # +options+:: +Hash+ of options
    def find(coupon_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/coupons/" + CGI.escape(coupon_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["coupon"]
      
      
      obj = Coupon.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated coupon attributes.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/coupons/" + CGI.escape(@id) + ""
      data    = {
        "metadata" => @metadata
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["coupon"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Delete the coupon.
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/coupons/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
