# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ThreeDS
    
    attr_reader :version
    attr_reader :status
    attr_reader :fingerprinted
    attr_reader :challenged

    
    def version=(val)
      @version = val
    end
    
    def status=(val)
      @status = val
    end
    
    def fingerprinted=(val)
      @fingerprinted = val
    end
    
    def challenged=(val)
      @challenged = val
    end
    

    # Initializes the ThreeDS object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.version = data.fetch(:version, nil)
      self.status = data.fetch(:status, nil)
      self.fingerprinted = data.fetch(:fingerprinted, nil)
      self.challenged = data.fetch(:challenged, nil)
      
    end

    # Create a new ThreeDS using the current client
    def new(data = {})
      ThreeDS.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "Version": self.version,
          "Status": self.status,
          "fingerprinted": self.fingerprinted,
          "challenged": self.challenged,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "Version"
        self.version = data["Version"]
      end
      if data.include? "Status"
        self.status = data["Status"]
      end
      if data.include? "fingerprinted"
        self.fingerprinted = data["fingerprinted"]
      end
      if data.include? "challenged"
        self.challenged = data["challenged"]
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
      self.version = data.fetch(:version, self.version)
      self.status = data.fetch(:status, self.status)
      self.fingerprinted = data.fetch(:fingerprinted, self.fingerprinted)
      self.challenged = data.fetch(:challenged, self.challenged)
      
      self
    end

    
  end
end
