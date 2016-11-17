# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Webhook
    
    attr_reader :id
    attr_reader :project
    attr_reader :event
    attr_reader :request_url
    attr_reader :request_method
    attr_reader :response_body
    attr_reader :response_code
    attr_reader :response_headers
    attr_reader :response_time_ms
    attr_reader :status
    attr_reader :created_at
    attr_reader :release_at

    
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
    
    def event=(val)
      if val.instance_of? Event
        @event = val
      else
        obj = Event.new(@client)
        obj.fill_with_data(val)
        @event = obj
      end
      
    end
    
    def request_url=(val)
      @request_url = val
    end
    
    def request_method=(val)
      @request_method = val
    end
    
    def response_body=(val)
      @response_body = val
    end
    
    def response_code=(val)
      @response_code = val
    end
    
    def response_headers=(val)
      @response_headers = val
    end
    
    def response_time_ms=(val)
      @response_time_ms = val
    end
    
    def status=(val)
      @status = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    
    def release_at=(val)
      @release_at = val
    end
    

    # Initializes the Webhook object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @event = data.fetch(:event, nil)
      @request_url = data.fetch(:request_url, "")
      @request_method = data.fetch(:request_method, "")
      @response_body = data.fetch(:response_body, "")
      @response_code = data.fetch(:response_code, "")
      @response_headers = data.fetch(:response_headers, "")
      @response_time_ms = data.fetch(:response_time_ms, 0)
      @status = data.fetch(:status, 0)
      @created_at = data.fetch(:created_at, "")
      @release_at = data.fetch(:release_at, "")
      
    end

    # Create a new Webhook using the current client
    def new(data = {})
      Webhook.new(@client, data)
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
      if data.include? "event"
        @event = data["event"]
      end
      if data.include? "request_url"
        @request_url = data["request_url"]
      end
      if data.include? "request_method"
        @request_method = data["request_method"]
      end
      if data.include? "response_body"
        @response_body = data["response_body"]
      end
      if data.include? "response_code"
        @response_code = data["response_code"]
      end
      if data.include? "response_headers"
        @response_headers = data["response_headers"]
      end
      if data.include? "response_time_ms"
        @response_time_ms = data["response_time_ms"]
      end
      if data.include? "status"
        @status = data["status"]
      end
      if data.include? "created_at"
        @created_at = data["created_at"]
      end
      if data.include? "release_at"
        @release_at = data["release_at"]
      end
      
      self
    end

    
  end
end
