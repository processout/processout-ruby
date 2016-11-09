# The content of this file was automatically generated

require "cgi"
require_relative "networking/request"
require_relative "networking/response"

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
    def initialize(client)
      @client = client

      @id = ""
      @project = nil
      @name = ""
      @data = nil
      @sandbox = false
      @fired_at = ""
      
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        @id = data["id"]
      end
      if data.include? "project"
        @project = data["project"]
      end
      if data.include? "name"
        @name = data["name"]
      end
      if data.include? "data"
        @data = data["data"]
      end
      if data.include? "sandbox"
        @sandbox = data["sandbox"]
      end
      if data.include? "fired_at"
        @fired_at = data["fired_at"]
      end
      
      self
    end

    # Get all the webhooks of the event.
    # Params:
    # +options+:: +Hash+ of options
    def webhooks(options = nil)
      request = Request.new(@client)
      path    = "/events/" + CGI.escape(@id) + "/webhooks"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['webhooks']
        tmp = Webhook(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Get all the events.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = nil)
      request = Request.new(@client)
      path    = "/events"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['events']
        tmp = Event(@client)
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
    def find(event_id, options = nil)
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
