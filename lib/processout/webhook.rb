# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Webhook
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :event
    attr_reader :event_id
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
    
    def event=(val)
      if val.nil?
        @event = val
        return
      end

      if val.instance_of? Event
        @event = val
      else
        obj = Event.new(@client)
        obj.fill_with_data(val)
        @event = obj
      end
      
    end
    
    def event_id=(val)
      @event_id = val
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

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.event = data.fetch(:event, nil)
      self.event_id = data.fetch(:event_id, nil)
      self.request_url = data.fetch(:request_url, nil)
      self.request_method = data.fetch(:request_method, nil)
      self.response_body = data.fetch(:response_body, nil)
      self.response_code = data.fetch(:response_code, nil)
      self.response_headers = data.fetch(:response_headers, nil)
      self.response_time_ms = data.fetch(:response_time_ms, nil)
      self.status = data.fetch(:status, nil)
      self.created_at = data.fetch(:created_at, nil)
      self.release_at = data.fetch(:release_at, nil)
      
    end

    # Create a new Webhook using the current client
    def new(data = {})
      Webhook.new(@client, data)
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
      if data.include? "event"
        self.event = data["event"]
      end
      if data.include? "event_id"
        self.event_id = data["event_id"]
      end
      if data.include? "request_url"
        self.request_url = data["request_url"]
      end
      if data.include? "request_method"
        self.request_method = data["request_method"]
      end
      if data.include? "response_body"
        self.response_body = data["response_body"]
      end
      if data.include? "response_code"
        self.response_code = data["response_code"]
      end
      if data.include? "response_headers"
        self.response_headers = data["response_headers"]
      end
      if data.include? "response_time_ms"
        self.response_time_ms = data["response_time_ms"]
      end
      if data.include? "status"
        self.status = data["status"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      if data.include? "release_at"
        self.release_at = data["release_at"]
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
      self.event = data.fetch(:event, self.event)
      self.event_id = data.fetch(:event_id, self.event_id)
      self.request_url = data.fetch(:request_url, self.request_url)
      self.request_method = data.fetch(:request_method, self.request_method)
      self.response_body = data.fetch(:response_body, self.response_body)
      self.response_code = data.fetch(:response_code, self.response_code)
      self.response_headers = data.fetch(:response_headers, self.response_headers)
      self.response_time_ms = data.fetch(:response_time_ms, self.response_time_ms)
      self.status = data.fetch(:status, self.status)
      self.created_at = data.fetch(:created_at, self.created_at)
      self.release_at = data.fetch(:release_at, self.release_at)
      
      self
    end

    
  end
end
