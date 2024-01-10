# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class UnsupportedFeatureBypass
    
    attr_reader :incremental_authorization

    
    def incremental_authorization=(val)
      @incremental_authorization = val
    end
    

    # Initializes the UnsupportedFeatureBypass object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.incremental_authorization = data.fetch(:incremental_authorization, nil)
      
    end

    # Create a new UnsupportedFeatureBypass using the current client
    def new(data = {})
      UnsupportedFeatureBypass.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "incremental_authorization": self.incremental_authorization,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "incremental_authorization"
        self.incremental_authorization = data["incremental_authorization"]
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
      self.incremental_authorization = data.fetch(:incremental_authorization, self.incremental_authorization)
      
      self
    end

    
  end
end
