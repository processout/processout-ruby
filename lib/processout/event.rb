# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Event
    
    attr_reader :id
    attr_reader :project
    attr_reader :name
    attr_reader :data
    attr_reader :sandbox
    attr_reader :fired_at

    
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
    
    def name=(val)
      @name = val
    end
    
    def data=(val)
      @data = val
      
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def fired_at=(val)
      @fired_at = val
    end
    

    # Initializes the Event object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @name = data.fetch(:name, "")
      @data = data.fetch(:data, nil)
      @sandbox = data.fetch(:sandbox, false)
      @fired_at = data.fetch(:fired_at, "")
      
    end

    # Create a new Event using the current client
    def new(data = {})
      Event.new(@client, data)
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
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "data"
        self.data = data["data"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "fired_at"
        self.fired_at = data["fired_at"]
      end
      
      self
    end

    # Get all the webhooks of the event.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_webhooks(options = {})
      request = Request.new(@client)
      path    = "/events/" + CGI.escape(@id) + "/webhooks"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['webhooks']
        tmp = Webhook.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Get all the events.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      request = Request.new(@client)
      path    = "/events"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['events']
        tmp = Event.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find an event by its ID.
    # Params:
    # +event_id+:: ID of the event
    # +options+:: +Hash+ of options
    def find(event_id, options = {})
      request = Request.new(@client)
      path    = "/events/" + CGI.escape(event_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["event"]
      
      
      obj = Event.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
