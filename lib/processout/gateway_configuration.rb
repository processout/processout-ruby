# The content of this file was automatically generated

require "cgi"
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
    attr_reader :fee_fixed
    attr_reader :fee_percentage
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
    
    def fee_fixed=(val)
      @fee_fixed = val
    end
    
    def fee_percentage=(val)
      @fee_percentage = val
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
      self.fee_fixed = data.fetch(:fee_fixed, nil)
      self.fee_percentage = data.fetch(:fee_percentage, nil)
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
      if data.include? "fee_fixed"
        self.fee_fixed = data["fee_fixed"]
      end
      if data.include? "fee_percentage"
        self.fee_percentage = data["fee_percentage"]
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
      self.fee_fixed = data.fetch(:fee_fixed, self.fee_fixed)
      self.fee_percentage = data.fetch(:fee_percentage, self.fee_percentage)
      self.default_currency = data.fetch(:default_currency, self.default_currency)
      self.enabled = data.fetch(:enabled, self.enabled)
      self.public_keys = data.fetch(:public_keys, self.public_keys)
      self.created_at = data.fetch(:created_at, self.created_at)
      self.enabled_at = data.fetch(:enabled_at, self.enabled_at)
      
      self
    end

    
  end
end
