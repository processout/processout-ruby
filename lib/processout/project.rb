# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Project
    
    attr_reader :id
    attr_reader :supervisor_project
    attr_reader :supervisor_project_id
    attr_reader :api_version
    attr_reader :name
    attr_reader :logo_url
    attr_reader :email
    attr_reader :default_currency
    attr_reader :private_key
    attr_reader :dunning_configuration
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def supervisor_project=(val)
      if val.nil?
        @supervisor_project = val
        return
      end

      if val.instance_of? Project
        @supervisor_project = val
      else
        obj = Project.new(@client)
        obj.fill_with_data(val)
        @supervisor_project = obj
      end
      
    end
    
    def supervisor_project_id=(val)
      @supervisor_project_id = val
    end
    
    def api_version=(val)
      if val.nil?
        @api_version = val
        return
      end

      if val.instance_of? APIVersion
        @api_version = val
      else
        obj = APIVersion.new(@client)
        obj.fill_with_data(val)
        @api_version = obj
      end
      
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
    
    def default_currency=(val)
      @default_currency = val
    end
    
    def private_key=(val)
      @private_key = val
    end
    
    def dunning_configuration=(val)
      if val.nil?
        @dunning_configuration = []
        return
      end

      if val.length > 0 and val[0].instance_of? DunningAction
        @dunning_configuration = val
      else
        l = Array.new
        for v in val
          obj = DunningAction.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @dunning_configuration = l
      end
      
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
      self.supervisor_project = data.fetch(:supervisor_project, nil)
      self.supervisor_project_id = data.fetch(:supervisor_project_id, nil)
      self.api_version = data.fetch(:api_version, nil)
      self.name = data.fetch(:name, nil)
      self.logo_url = data.fetch(:logo_url, nil)
      self.email = data.fetch(:email, nil)
      self.default_currency = data.fetch(:default_currency, nil)
      self.private_key = data.fetch(:private_key, nil)
      self.dunning_configuration = data.fetch(:dunning_configuration, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Project using the current client
    def new(data = {})
      Project.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "supervisor_project": self.supervisor_project,
          "supervisor_project_id": self.supervisor_project_id,
          "api_version": self.api_version,
          "name": self.name,
          "logo_url": self.logo_url,
          "email": self.email,
          "default_currency": self.default_currency,
          "private_key": self.private_key,
          "dunning_configuration": self.dunning_configuration,
          "created_at": self.created_at,
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
      if data.include? "supervisor_project"
        self.supervisor_project = data["supervisor_project"]
      end
      if data.include? "supervisor_project_id"
        self.supervisor_project_id = data["supervisor_project_id"]
      end
      if data.include? "api_version"
        self.api_version = data["api_version"]
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
      if data.include? "default_currency"
        self.default_currency = data["default_currency"]
      end
      if data.include? "private_key"
        self.private_key = data["private_key"]
      end
      if data.include? "dunning_configuration"
        self.dunning_configuration = data["dunning_configuration"]
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
      self.supervisor_project = data.fetch(:supervisor_project, self.supervisor_project)
      self.supervisor_project_id = data.fetch(:supervisor_project_id, self.supervisor_project_id)
      self.api_version = data.fetch(:api_version, self.api_version)
      self.name = data.fetch(:name, self.name)
      self.logo_url = data.fetch(:logo_url, self.logo_url)
      self.email = data.fetch(:email, self.email)
      self.default_currency = data.fetch(:default_currency, self.default_currency)
      self.private_key = data.fetch(:private_key, self.private_key)
      self.dunning_configuration = data.fetch(:dunning_configuration, self.dunning_configuration)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Fetch the current project information.
    # Params:
    # +options+:: +Hash+ of options
    def fetch(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["project"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated project's attributes.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["project"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Delete the project. Be careful! Executing this request will prevent any further interaction with the API that uses this project.
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/{project_id}"
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    # Get all the supervised projects.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_supervised(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/supervised-projects"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['projects']
        tmp = Project.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Create a new supervised project.
    # Params:
    # +options+:: +Hash+ of options
    def create_supervised(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/supervised-projects"
      data    = {
        "id" => @id, 
        "name" => @name, 
        "default_currency" => @default_currency, 
        "dunning_configuration" => @dunning_configuration, 
        "applepay_settings" => options.fetch(:applepay_settings, nil), 
        "public_metadata" => options.fetch(:public_metadata, nil)
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["project"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
