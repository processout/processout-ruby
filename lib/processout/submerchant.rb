# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Submerchant
    
    attr_reader :id
    attr_reader :name
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def name=(val)
      @name = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Submerchant object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.name = data.fetch(:name, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Submerchant using the current client
    def new(data = {})
      Submerchant.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "name": self.name,
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
      if data.include? "name"
        self.name = data["name"]
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
      self.name = data.fetch(:name, self.name)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    
  end
end
