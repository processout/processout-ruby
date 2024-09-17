# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ExportLayout
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :created_at
    attr_reader :name
    attr_reader :type
    attr_reader :is_default
    attr_reader :configuration

    
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
    
    def created_at=(val)
      @created_at = val
    end
    
    def name=(val)
      @name = val
    end
    
    def type=(val)
      @type = val
    end
    
    def is_default=(val)
      @is_default = val
    end
    
    def configuration=(val)
      if val.nil?
        @configuration = val
        return
      end

      if val.instance_of? ExportLayoutConfiguration
        @configuration = val
      else
        obj = ExportLayoutConfiguration.new(@client)
        obj.fill_with_data(val)
        @configuration = obj
      end
      
    end
    

    # Initializes the ExportLayout object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.created_at = data.fetch(:created_at, nil)
      self.name = data.fetch(:name, nil)
      self.type = data.fetch(:type, nil)
      self.is_default = data.fetch(:is_default, nil)
      self.configuration = data.fetch(:configuration, nil)
      
    end

    # Create a new ExportLayout using the current client
    def new(data = {})
      ExportLayout.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "project": self.project,
          "project_id": self.project_id,
          "created_at": self.created_at,
          "name": self.name,
          "type": self.type,
          "is_default": self.is_default,
          "configuration": self.configuration,
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
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "is_default"
        self.is_default = data["is_default"]
      end
      if data.include? "configuration"
        self.configuration = data["configuration"]
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
      self.created_at = data.fetch(:created_at, self.created_at)
      self.name = data.fetch(:name, self.name)
      self.type = data.fetch(:type, self.type)
      self.is_default = data.fetch(:is_default, self.is_default)
      self.configuration = data.fetch(:configuration, self.configuration)
      
      self
    end

    # Get all the export layouts.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/exports/layouts"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['export_layouts']
        tmp = ExportLayout.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find an export layout by its ID.
    # Params:
    # +export_layout_id+:: ID of the export layout
    # +options+:: +Hash+ of options
    def find(export_layout_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/exports/layouts/" + CGI.escape(export_layout_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["export_layout"]
      
      
      obj = ExportLayout.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find the default export layout for given export type.
    # Params:
    # +export_type+:: Export type for which the default layout is assigned.
    # +options+:: +Hash+ of options
    def find_default(export_type, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/exports/layouts/default/" + CGI.escape(export_type) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["export_layout"]
      
      
      obj = ExportLayout.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Create a new export layout.
    # Params:
    # +options+:: +Hash+ of options
    def create(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/exports/layouts"
      data    = {
        "name" => @name, 
        "type" => @type, 
        "is_default" => @is_default, 
        "configuration" => @configuration
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["export_layout"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Update the export layout.
    # Params:
    # +export_layout_id+:: ID of the export layout
    # +options+:: +Hash+ of options
    def update(export_layout_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/exports/layouts/" + CGI.escape(export_layout_id) + ""
      data    = {
        "name" => @name, 
        "is_default" => @is_default, 
        "configuration" => @configuration
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["export_layout"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Delete the export layout.
    # Params:
    # +export_layout_id+:: ID of the export layout
    # +options+:: +Hash+ of options
    def delete(export_layout_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/exports/layouts/" + CGI.escape(export_layout_id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
