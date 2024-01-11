# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class NativeAPMTransactionDetailsGateway
    
    attr_reader :display_name
    attr_reader :logo_url

    
    def display_name=(val)
      @display_name = val
    end
    
    def logo_url=(val)
      @logo_url = val
    end
    

    # Initializes the NativeAPMTransactionDetailsGateway object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.display_name = data.fetch(:display_name, nil)
      self.logo_url = data.fetch(:logo_url, nil)
      
    end

    # Create a new NativeAPMTransactionDetailsGateway using the current client
    def new(data = {})
      NativeAPMTransactionDetailsGateway.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "display_name": self.display_name,
          "logo_url": self.logo_url,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "display_name"
        self.display_name = data["display_name"]
      end
      if data.include? "logo_url"
        self.logo_url = data["logo_url"]
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
      self.display_name = data.fetch(:display_name, self.display_name)
      self.logo_url = data.fetch(:logo_url, self.logo_url)
      
      self
    end

    
  end
end
