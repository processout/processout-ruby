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
    attr_reader :ares_trans_status
    attr_reader :cres_trans_status
    attr_reader :ds_trans_id
    attr_reader :fingerprint_completion_indicator
    attr_reader :server_trans_id

    
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
    
    def ares_trans_status=(val)
      @ares_trans_status = val
    end
    
    def cres_trans_status=(val)
      @cres_trans_status = val
    end
    
    def ds_trans_id=(val)
      @ds_trans_id = val
    end
    
    def fingerprint_completion_indicator=(val)
      @fingerprint_completion_indicator = val
    end
    
    def server_trans_id=(val)
      @server_trans_id = val
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
      self.ares_trans_status = data.fetch(:ares_trans_status, nil)
      self.cres_trans_status = data.fetch(:cres_trans_status, nil)
      self.ds_trans_id = data.fetch(:ds_trans_id, nil)
      self.fingerprint_completion_indicator = data.fetch(:fingerprint_completion_indicator, nil)
      self.server_trans_id = data.fetch(:server_trans_id, nil)
      
    end

    # Create a new ThreeDS using the current client
    def new(data = {})
      ThreeDS.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "version": self.version,
          "status": self.status,
          "fingerprinted": self.fingerprinted,
          "challenged": self.challenged,
          "ares_trans_status": self.ares_trans_status,
          "cres_trans_status": self.cres_trans_status,
          "ds_trans_id": self.ds_trans_id,
          "fingerprint_completion_indicator": self.fingerprint_completion_indicator,
          "server_trans_id": self.server_trans_id,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "version"
        self.version = data["version"]
      end
      if data.include? "status"
        self.status = data["status"]
      end
      if data.include? "fingerprinted"
        self.fingerprinted = data["fingerprinted"]
      end
      if data.include? "challenged"
        self.challenged = data["challenged"]
      end
      if data.include? "ares_trans_status"
        self.ares_trans_status = data["ares_trans_status"]
      end
      if data.include? "cres_trans_status"
        self.cres_trans_status = data["cres_trans_status"]
      end
      if data.include? "ds_trans_id"
        self.ds_trans_id = data["ds_trans_id"]
      end
      if data.include? "fingerprint_completion_indicator"
        self.fingerprint_completion_indicator = data["fingerprint_completion_indicator"]
      end
      if data.include? "server_trans_id"
        self.server_trans_id = data["server_trans_id"]
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
      self.ares_trans_status = data.fetch(:ares_trans_status, self.ares_trans_status)
      self.cres_trans_status = data.fetch(:cres_trans_status, self.cres_trans_status)
      self.ds_trans_id = data.fetch(:ds_trans_id, self.ds_trans_id)
      self.fingerprint_completion_indicator = data.fetch(:fingerprint_completion_indicator, self.fingerprint_completion_indicator)
      self.server_trans_id = data.fetch(:server_trans_id, self.server_trans_id)
      
      self
    end

    
  end
end
