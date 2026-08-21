# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class APMPaymentProcessingConfiguration
    
    attr_reader :return_redirect_type
    attr_reader :preferred_finalization_mode

    
    def return_redirect_type=(val)
      @return_redirect_type = val
    end
    
    def preferred_finalization_mode=(val)
      @preferred_finalization_mode = val
    end
    

    # Initializes the APMPaymentProcessingConfiguration object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.return_redirect_type = data.fetch(:return_redirect_type, nil)
      self.preferred_finalization_mode = data.fetch(:preferred_finalization_mode, nil)
      
    end

    # Create a new APMPaymentProcessingConfiguration using the current client
    def new(data = {})
      APMPaymentProcessingConfiguration.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "return_redirect_type": self.return_redirect_type,
          "preferred_finalization_mode": self.preferred_finalization_mode,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "return_redirect_type"
        self.return_redirect_type = data["return_redirect_type"]
      end
      if data.include? "preferred_finalization_mode"
        self.preferred_finalization_mode = data["preferred_finalization_mode"]
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
      self.return_redirect_type = data.fetch(:return_redirect_type, self.return_redirect_type)
      self.preferred_finalization_mode = data.fetch(:preferred_finalization_mode, self.preferred_finalization_mode)
      
      self
    end

    
  end
end
