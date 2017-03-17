# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class APIVersion
    
    attr_reader :name
    attr_reader :description
    attr_reader :created_at

    
    def name=(val)
      @name = val
    end
    
    def description=(val)
      @description = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the APIVersion object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.name = data.fetch(:name, nil)
      self.description = data.fetch(:description, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new APIVersion using the current client
    def new(data = {})
      APIVersion.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "description"
        self.description = data["description"]
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
      self.name = data.fetch(:name, self.name)
      self.description = data.fetch(:description, self.description)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    
  end
end
