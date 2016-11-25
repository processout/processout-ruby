# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Project
    
    attr_reader :id
    attr_reader :name
    attr_reader :logo_url
    attr_reader :email
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def name=(val)
      @name = val
    end
    
    def logo_url=(val)
      @logo_url = val
    end
    
    def email=(val)
      @email = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Project object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.name = data.fetch(:name, nil)
      self.logo_url = data.fetch(:logo_url, nil)
      self.email = data.fetch(:email, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Project using the current client
    def new(data = {})
      Project.new(@client, data)
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
      if data.include? "logo_url"
        self.logo_url = data["logo_url"]
      end
      if data.include? "email"
        self.email = data["email"]
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
      self.name = data.fetch(:name, self.name)
      self.logo_url = data.fetch(:logo_url, self.logo_url)
      self.email = data.fetch(:email, self.email)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get all the gateway configurations of the project
    # Params:
    # +options+:: +Hash+ of options
    def fetch_gateway_configurations(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/" + CGI.escape(@id) + "/gateway-configurations"
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
