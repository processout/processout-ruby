# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Gateway
    
    attr_reader :id
    attr_reader :name
    attr_reader :display_name
    attr_reader :logo_url
    attr_reader :url
    attr_reader :flows
    attr_reader :tags
    attr_reader :can_pull_transactions
    attr_reader :can_refund
    attr_reader :is_oauth_authentication
    attr_reader :description

    
    def id=(val)
      @id = val
    end
    
    def name=(val)
      @name = val
    end
    
    def display_name=(val)
      @display_name = val
    end
    
    def logo_url=(val)
      @logo_url = val
    end
    
    def url=(val)
      @url = val
    end
    
    def flows=(val)
      @flows = val
    end
    
    def tags=(val)
      @tags = val
    end
    
    def can_pull_transactions=(val)
      @can_pull_transactions = val
    end
    
    def can_refund=(val)
      @can_refund = val
    end
    
    def is_oauth_authentication=(val)
      @is_oauth_authentication = val
    end
    
    def description=(val)
      @description = val
    end
    

    # Initializes the Gateway object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.name = data.fetch(:name, nil)
      self.display_name = data.fetch(:display_name, nil)
      self.logo_url = data.fetch(:logo_url, nil)
      self.url = data.fetch(:url, nil)
      self.flows = data.fetch(:flows, nil)
      self.tags = data.fetch(:tags, nil)
      self.can_pull_transactions = data.fetch(:can_pull_transactions, nil)
      self.can_refund = data.fetch(:can_refund, nil)
      self.is_oauth_authentication = data.fetch(:is_oauth_authentication, nil)
      self.description = data.fetch(:description, nil)
      
    end

    # Create a new Gateway using the current client
    def new(data = {})
      Gateway.new(@client, data)
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
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "display_name"
        self.display_name = data["display_name"]
      end
      if data.include? "logo_url"
        self.logo_url = data["logo_url"]
      end
      if data.include? "url"
        self.url = data["url"]
      end
      if data.include? "flows"
        self.flows = data["flows"]
      end
      if data.include? "tags"
        self.tags = data["tags"]
      end
      if data.include? "can_pull_transactions"
        self.can_pull_transactions = data["can_pull_transactions"]
      end
      if data.include? "can_refund"
        self.can_refund = data["can_refund"]
      end
      if data.include? "is_oauth_authentication"
        self.is_oauth_authentication = data["is_oauth_authentication"]
      end
      if data.include? "description"
        self.description = data["description"]
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
      self.name = data.fetch(:name, self.name)
      self.display_name = data.fetch(:display_name, self.display_name)
      self.logo_url = data.fetch(:logo_url, self.logo_url)
      self.url = data.fetch(:url, self.url)
      self.flows = data.fetch(:flows, self.flows)
      self.tags = data.fetch(:tags, self.tags)
      self.can_pull_transactions = data.fetch(:can_pull_transactions, self.can_pull_transactions)
      self.can_refund = data.fetch(:can_refund, self.can_refund)
      self.is_oauth_authentication = data.fetch(:is_oauth_authentication, self.is_oauth_authentication)
      self.description = data.fetch(:description, self.description)
      
      self
    end

    # Get all the gateway configurations of the gateway
    # Params:
    # +options+:: +Hash+ of options
    def fetch_gateway_configurations(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/gateways/" + CGI.escape(@name) + "/gateway-configurations"
      data    = {

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

    
  end
end
