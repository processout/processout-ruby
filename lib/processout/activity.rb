# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Activity
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :title
    attr_reader :content
    attr_reader :level
    attr_reader :created_at

    
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
    
    def title=(val)
      @title = val
    end
    
    def content=(val)
      @content = val
    end
    
    def level=(val)
      @level = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Activity object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.title = data.fetch(:title, nil)
      self.content = data.fetch(:content, nil)
      self.level = data.fetch(:level, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Activity using the current client
    def new(data = {})
      Activity.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "project": self.project,
          "project_id": self.project_id,
          "title": self.title,
          "content": self.content,
          "level": self.level,
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
      if data.include? "project"
        self.project = data["project"]
      end
      if data.include? "project_id"
        self.project_id = data["project_id"]
      end
      if data.include? "title"
        self.title = data["title"]
      end
      if data.include? "content"
        self.content = data["content"]
      end
      if data.include? "level"
        self.level = data["level"]
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
      self.project = data.fetch(:project, self.project)
      self.project_id = data.fetch(:project_id, self.project_id)
      self.title = data.fetch(:title, self.title)
      self.content = data.fetch(:content, self.content)
      self.level = data.fetch(:level, self.level)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get all the project activities.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/activities"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['activities']
        tmp = Activity.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a specific activity and fetch its data.
    # Params:
    # +activity_id+:: ID of the activity
    # +options+:: +Hash+ of options
    def find(activity_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/activities/" + CGI.escape(activity_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["activity"]
      
      
      obj = Activity.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
