# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ExportLayoutConfigurationTime
    
    attr_reader :format

    
    def format=(val)
      @format = val
    end
    

    # Initializes the ExportLayoutConfigurationTime object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.format = data.fetch(:format, nil)
      
    end

    # Create a new ExportLayoutConfigurationTime using the current client
    def new(data = {})
      ExportLayoutConfigurationTime.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "format": self.format,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "format"
        self.format = data["format"]
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
      self.format = data.fetch(:format, self.format)
      
      self
    end

    
  end
end
