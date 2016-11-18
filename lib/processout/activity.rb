# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Activity
    
    attr_reader :id
    attr_reader :project
    attr_reader :title
    attr_reader :content
    attr_reader :level
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

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @title = data.fetch(:title, "")
      @content = data.fetch(:content, "")
      @level = data.fetch(:level, 0)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Activity using the current client
    def new(data = {})
      Activity.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        self.id = data["id"]
      end
      if data.include? "project"
        self.project = data["project"]
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

    # Get all the project activities.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
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
