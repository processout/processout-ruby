# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Gateway
    
    attr_reader :id
    attr_reader :name
    attr_reader :display_name
    attr_reader :logo_url
    attr_reader :url
    attr_reader :flows
    attr_reader :tags
    attr_reader :description

    
    def id=(val)
      @id = val
    end
    
    def name=(val)
      @name = val
    end
    
    def display_name=(val)
      @display_name = val
    end
    
    def logo_url=(val)
      @logo_url = val
    end
    
    def url=(val)
      @url = val
    end
    
    def flows=(val)
      @flows = val
    end
    
    def tags=(val)
      @tags = val
    end
    
    def description=(val)
      @description = val
    end
    

    # Initializes the Gateway object
    # Params:
    # +client+:: +ProcessOut+ client instance
    def initialize(client)
      @client = client

      @id = ""
      @name = ""
      @display_name = ""
      @logo_url = ""
      @url = ""
      @flows = Array.new
      @tags = Array.new
      @description = ""
      
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        @id = data["id"]
      end
      if data.include? "name"
        @name = data["name"]
      end
      if data.include? "display_name"
        @display_name = data["display_name"]
      end
      if data.include? "logo_url"
        @logo_url = data["logo_url"]
      end
      if data.include? "url"
        @url = data["url"]
      end
      if data.include? "flows"
        @flows = data["flows"]
      end
      if data.include? "tags"
        @tags = data["tags"]
      end
      if data.include? "description"
        @description = data["description"]
      end
      
      self
    end

    
  end
end
