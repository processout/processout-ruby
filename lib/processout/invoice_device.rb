# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoiceDevice
    
    attr_reader :channel
    attr_reader :ip_address
    attr_reader :id

    
    def channel=(val)
      @channel = val
    end
    
    def ip_address=(val)
      @ip_address = val
    end
    
    def id=(val)
      @id = val
    end
    

    # Initializes the InvoiceDevice object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.channel = data.fetch(:channel, nil)
      self.ip_address = data.fetch(:ip_address, nil)
      self.id = data.fetch(:id, nil)
      
    end

    # Create a new InvoiceDevice using the current client
    def new(data = {})
      InvoiceDevice.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "channel": self.channel,
          "ip_address": self.ip_address,
          "id": self.id,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "channel"
        self.channel = data["channel"]
      end
      if data.include? "ip_address"
        self.ip_address = data["ip_address"]
      end
      if data.include? "id"
        self.id = data["id"]
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
      self.channel = data.fetch(:channel, self.channel)
      self.ip_address = data.fetch(:ip_address, self.ip_address)
      self.id = data.fetch(:id, self.id)
      
      self
    end

    
  end
end
