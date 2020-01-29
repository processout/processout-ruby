# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class GatewayConfiguration
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :gateway
    attr_reader :gateway_id
    attr_reader :name
    attr_reader :default_currency
    attr_reader :enabled
    attr_reader :public_keys
    attr_reader :created_at
    attr_reader :enabled_at

    
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
    
    def gateway=(val)
      if val.nil?
        @gateway = val
        return
      end

      if val.instance_of? Gateway
        @gateway = val
      else
        obj = Gateway.new(@client)
        obj.fill_with_data(val)
        @gateway = obj
      end
      
    end
    
    def gateway_id=(val)
      @gateway_id = val
    end
    
    def name=(val)
      @name = val
    end
    
    def default_currency=(val)
      @default_currency = val
    end
    
    def enabled=(val)
      @enabled = val
    end
    
    def public_keys=(val)
      @public_keys = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    
    def enabled_at=(val)
      @enabled_at = val
    end
    

    # Initializes the GatewayConfiguration object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.gateway = data.fetch(:gateway, nil)
      self.gateway_id = data.fetch(:gateway_id, nil)
      self.name = data.fetch(:name, nil)
      self.default_currency = data.fetch(:default_currency, nil)
      self.enabled = data.fetch(:enabled, nil)
      self.public_keys = data.fetch(:public_keys, nil)
      self.created_at = data.fetch(:created_at, nil)
      self.enabled_at = data.fetch(:enabled_at, nil)
      
    end

    # Create a new GatewayConfiguration using the current client
    def new(data = {})
      GatewayConfiguration.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "project": self.project,
          "project_id": self.project_id,
          "gateway": self.gateway,
          "gateway_id": self.gateway_id,
          "name": self.name,
          "default_currency": self.default_currency,
          "enabled": self.enabled,
          "public_keys": self.public_keys,
          "created_at": self.created_at,
          "enabled_at": self.enabled_at,
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
      if data.include? "gateway"
        self.gateway = data["gateway"]
      end
      if data.include? "gateway_id"
        self.gateway_id = data["gateway_id"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "default_currency"
        self.default_currency = data["default_currency"]
      end
      if data.include? "enabled"
        self.enabled = data["enabled"]
      end
      if data.include? "public_keys"
        self.public_keys = data["public_keys"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      if data.include? "enabled_at"
        self.enabled_at = data["enabled_at"]
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
      self.gateway = data.fetch(:gateway, self.gateway)
      self.gateway_id = data.fetch(:gateway_id, self.gateway_id)
      self.name = data.fetch(:name, self.name)
      self.default_currency = data.fetch(:default_currency, self.default_currency)
      self.enabled = data.fetch(:enabled, self.enabled)
      self.public_keys = data.fetch(:public_keys, self.public_keys)
      self.created_at = data.fetch(:created_at, self.created_at)
      self.enabled_at = data.fetch(:enabled_at, self.enabled_at)
      
      self
    end

    # Get all the gateway configurations.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/gateway-configurations"
      data    = {
        "expand_merchant_accounts" => options.fetch(:expand_merchant_accounts, nil)
      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['gateway_configurations']
        tmp = GatewayConfiguration.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a gateway configuration by its ID.
    # Params:
    # +configuration_id+:: ID of the gateway configuration
    # +options+:: +Hash+ of options
    def find(configuration_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/gateway-configurations/" + CGI.escape(configuration_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["gateway_configuration"]
      
      
      obj = GatewayConfiguration.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated gateway configuration attributes and settings.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/gateway-configurations/" + CGI.escape(@id) + ""
      data    = {
        "id" => @id, 
        "name" => @name, 
        "enabled" => @enabled, 
        "default_currency" => @default_currency, 
        "settings" => options.fetch(:settings, nil), 
        "sub_accounts_enabled" => options.fetch(:sub_accounts_enabled, nil)
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["gateway_configuration"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Delete the gateway configuration.
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/gateway-configurations/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    # Create a new gateway configuration.
    # Params:
    # +gateway_name+:: Name of the gateway
    # +options+:: +Hash+ of options
    def create(gateway_name, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/gateways/" + CGI.escape(gateway_name) + "/gateway-configurations"
      data    = {
        "id" => @id, 
        "name" => @name, 
        "enabled" => @enabled, 
        "default_currency" => @default_currency, 
        "settings" => options.fetch(:settings, nil), 
        "sub_accounts_enabled" => options.fetch(:sub_accounts_enabled, nil)
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["gateway_configuration"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
