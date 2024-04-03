# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ProjectSFTPSettingsPublic
    
    attr_reader :enabled
    attr_reader :endpoint
    attr_reader :username

    
    def enabled=(val)
      @enabled = val
    end
    
    def endpoint=(val)
      @endpoint = val
    end
    
    def username=(val)
      @username = val
    end
    

    # Initializes the ProjectSFTPSettingsPublic object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.enabled = data.fetch(:enabled, nil)
      self.endpoint = data.fetch(:endpoint, nil)
      self.username = data.fetch(:username, nil)
      
    end

    # Create a new ProjectSFTPSettingsPublic using the current client
    def new(data = {})
      ProjectSFTPSettingsPublic.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "enabled": self.enabled,
          "endpoint": self.endpoint,
          "username": self.username,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "enabled"
        self.enabled = data["enabled"]
      end
      if data.include? "endpoint"
        self.endpoint = data["endpoint"]
      end
      if data.include? "username"
        self.username = data["username"]
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
      self.enabled = data.fetch(:enabled, self.enabled)
      self.endpoint = data.fetch(:endpoint, self.endpoint)
      self.username = data.fetch(:username, self.username)
      
      self
    end

    # Fetch the SFTP settings for the project.
    # Params:
    # +id+:: ID of the project
    # +options+:: +Hash+ of options
    def fetch_sftp_settings(id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/" + CGI.escape(id) + "/sftp-settings"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["sftp_settings"]
      
      
      obj = ProjectSFTPSettingsPublic.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
