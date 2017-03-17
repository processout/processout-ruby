# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class APIRequest
    
    attr_reader :id
    attr_reader :project
    attr_reader :api_version
    attr_reader :idempotency_key
    attr_reader :url
    attr_reader :method
    attr_reader :headers
    attr_reader :body
    attr_reader :response_code
    attr_reader :response_headers
    attr_reader :response_body
    attr_reader :response_ms
    attr_reader :sandbox
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
    
    def idempotency_key=(val)
      @idempotency_key = val
    end
    
    def url=(val)
      @url = val
    end
    
    def method=(val)
      @method = val
    end
    
    def headers=(val)
      @headers = val
    end
    
    def body=(val)
      @body = val
    end
    
    def response_code=(val)
      @response_code = val
    end
    
    def response_headers=(val)
      @response_headers = val
    end
    
    def response_body=(val)
      @response_body = val
    end
    
    def response_ms=(val)
      @response_ms = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the APIRequest object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.api_version = data.fetch(:api_version, nil)
      self.idempotency_key = data.fetch(:idempotency_key, nil)
      self.url = data.fetch(:url, nil)
      self.method = data.fetch(:method, nil)
      self.headers = data.fetch(:headers, nil)
      self.body = data.fetch(:body, nil)
      self.response_code = data.fetch(:response_code, nil)
      self.response_headers = data.fetch(:response_headers, nil)
      self.response_body = data.fetch(:response_body, nil)
      self.response_ms = data.fetch(:response_ms, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new APIRequest using the current client
    def new(data = {})
      APIRequest.new(@client, data)
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
      if data.include? "api_version"
        self.api_version = data["api_version"]
      end
      if data.include? "idempotency_key"
        self.idempotency_key = data["idempotency_key"]
      end
      if data.include? "url"
        self.url = data["url"]
      end
      if data.include? "method"
        self.method = data["method"]
      end
      if data.include? "headers"
        self.headers = data["headers"]
      end
      if data.include? "body"
        self.body = data["body"]
      end
      if data.include? "response_code"
        self.response_code = data["response_code"]
      end
      if data.include? "response_headers"
        self.response_headers = data["response_headers"]
      end
      if data.include? "response_body"
        self.response_body = data["response_body"]
      end
      if data.include? "response_ms"
        self.response_ms = data["response_ms"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
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
      self.api_version = data.fetch(:api_version, self.api_version)
      self.idempotency_key = data.fetch(:idempotency_key, self.idempotency_key)
      self.url = data.fetch(:url, self.url)
      self.method = data.fetch(:method, self.method)
      self.headers = data.fetch(:headers, self.headers)
      self.body = data.fetch(:body, self.body)
      self.response_code = data.fetch(:response_code, self.response_code)
      self.response_headers = data.fetch(:response_headers, self.response_headers)
      self.response_body = data.fetch(:response_body, self.response_body)
      self.response_ms = data.fetch(:response_ms, self.response_ms)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get all the API requests.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/api-requests"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['api_requests']
        tmp = APIRequest.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find an API request by its ID.
    # Params:
    # +api_request_id+:: ID of the API request
    # +options+:: +Hash+ of options
    def find(api_request_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/api-requests/{request_id}"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["api_request"]
      
      
      obj = APIRequest.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
