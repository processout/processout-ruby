# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ExportLayoutConfigurationColumn
    
    attr_reader :name
    attr_reader :rename

    
    def name=(val)
      @name = val
    end
    
    def rename=(val)
      @rename = val
    end
    

    # Initializes the ExportLayoutConfigurationColumn object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.name = data.fetch(:name, nil)
      self.rename = data.fetch(:rename, nil)
      
    end

    # Create a new ExportLayoutConfigurationColumn using the current client
    def new(data = {})
      ExportLayoutConfigurationColumn.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "name": self.name,
          "rename": self.rename,
      }.to_json
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
      if data.include? "rename"
        self.rename = data["rename"]
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
      self.rename = data.fetch(:rename, self.rename)
      
      self
    end

    
  end
end
