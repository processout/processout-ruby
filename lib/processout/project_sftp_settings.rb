# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ProjectSFTPSettings
    
    attr_reader :endpoint
    attr_reader :username
    attr_reader :password
    attr_reader :private_key

    
    def endpoint=(val)
      @endpoint = val
    end
    
    def username=(val)
      @username = val
    end
    
    def password=(val)
      @password = val
    end
    
    def private_key=(val)
      @private_key = val
    end
    

    # Initializes the ProjectSFTPSettings object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.endpoint = data.fetch(:endpoint, nil)
      self.username = data.fetch(:username, nil)
      self.password = data.fetch(:password, nil)
      self.private_key = data.fetch(:private_key, nil)
      
    end

    # Create a new ProjectSFTPSettings using the current client
    def new(data = {})
      ProjectSFTPSettings.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "endpoint": self.endpoint,
          "username": self.username,
          "password": self.password,
          "private_key": self.private_key,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "endpoint"
        self.endpoint = data["endpoint"]
      end
      if data.include? "username"
        self.username = data["username"]
      end
      if data.include? "password"
        self.password = data["password"]
      end
      if data.include? "private_key"
        self.private_key = data["private_key"]
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
      self.endpoint = data.fetch(:endpoint, self.endpoint)
      self.username = data.fetch(:username, self.username)
      self.password = data.fetch(:password, self.password)
      self.private_key = data.fetch(:private_key, self.private_key)
      
      self
    end

    # Save the SFTP settings for the project.
    # Params:
    # +id+:: ID of the project
    # +options+:: +Hash+ of options
    def save_sftp_settings(id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/" + CGI.escape(id) + "/sftp-settings"
      data    = {
        "endpoint" => @endpoint, 
        "username" => @username, 
        "password" => @password, 
        "private_key" => @private_key
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    # Delete the SFTP settings for the project.
    # Params:
    # +id+:: ID of the project
    # +options+:: +Hash+ of options
    def delete_sftp_settings(id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/" + CGI.escape(id) + "/sftp-settings"
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
