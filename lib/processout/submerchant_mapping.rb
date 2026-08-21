# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class SubmerchantMapping
    
    attr_reader :submerchant_id
    attr_reader :gateway_configuration_id
    attr_reader :psp_submerchant_id
    attr_reader :created_at

    
    def submerchant_id=(val)
      @submerchant_id = val
    end
    
    def gateway_configuration_id=(val)
      @gateway_configuration_id = val
    end
    
    def psp_submerchant_id=(val)
      @psp_submerchant_id = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the SubmerchantMapping object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.submerchant_id = data.fetch(:submerchant_id, nil)
      self.gateway_configuration_id = data.fetch(:gateway_configuration_id, nil)
      self.psp_submerchant_id = data.fetch(:psp_submerchant_id, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new SubmerchantMapping using the current client
    def new(data = {})
      SubmerchantMapping.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "submerchant_id": self.submerchant_id,
          "gateway_configuration_id": self.gateway_configuration_id,
          "psp_submerchant_id": self.psp_submerchant_id,
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
      if data.include? "submerchant_id"
        self.submerchant_id = data["submerchant_id"]
      end
      if data.include? "gateway_configuration_id"
        self.gateway_configuration_id = data["gateway_configuration_id"]
      end
      if data.include? "psp_submerchant_id"
        self.psp_submerchant_id = data["psp_submerchant_id"]
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
      self.submerchant_id = data.fetch(:submerchant_id, self.submerchant_id)
      self.gateway_configuration_id = data.fetch(:gateway_configuration_id, self.gateway_configuration_id)
      self.psp_submerchant_id = data.fetch(:psp_submerchant_id, self.psp_submerchant_id)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    
  end
end
