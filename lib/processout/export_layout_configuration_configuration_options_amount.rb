# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ExportLayoutConfigurationConfigurationOptionsAmount
    
    attr_reader :precision
    attr_reader :separator

    
    def precision=(val)
      @precision = val
    end
    
    def separator=(val)
      @separator = val
    end
    

    # Initializes the ExportLayoutConfigurationConfigurationOptionsAmount object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.precision = data.fetch(:precision, nil)
      self.separator = data.fetch(:separator, nil)
      
    end

    # Create a new ExportLayoutConfigurationConfigurationOptionsAmount using the current client
    def new(data = {})
      ExportLayoutConfigurationConfigurationOptionsAmount.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "precision": self.precision,
          "separator": self.separator,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "precision"
        self.precision = data["precision"]
      end
      if data.include? "separator"
        self.separator = data["separator"]
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
      self.precision = data.fetch(:precision, self.precision)
      self.separator = data.fetch(:separator, self.separator)
      
      self
    end

    
  end
end
