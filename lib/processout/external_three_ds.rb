# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ExternalThreeDS
    
    attr_reader :xid
    attr_reader :trans_status
    attr_reader :eci
    attr_reader :cavv
    attr_reader :ds_trans_id
    attr_reader :version
    attr_reader :authentication_flow

    
    def xid=(val)
      @xid = val
    end
    
    def trans_status=(val)
      @trans_status = val
    end
    
    def eci=(val)
      @eci = val
    end
    
    def cavv=(val)
      @cavv = val
    end
    
    def ds_trans_id=(val)
      @ds_trans_id = val
    end
    
    def version=(val)
      @version = val
    end
    
    def authentication_flow=(val)
      @authentication_flow = val
    end
    

    # Initializes the ExternalThreeDS object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.xid = data.fetch(:xid, nil)
      self.trans_status = data.fetch(:trans_status, nil)
      self.eci = data.fetch(:eci, nil)
      self.cavv = data.fetch(:cavv, nil)
      self.ds_trans_id = data.fetch(:ds_trans_id, nil)
      self.version = data.fetch(:version, nil)
      self.authentication_flow = data.fetch(:authentication_flow, nil)
      
    end

    # Create a new ExternalThreeDS using the current client
    def new(data = {})
      ExternalThreeDS.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "xid": self.xid,
          "trans_status": self.trans_status,
          "eci": self.eci,
          "cavv": self.cavv,
          "ds_trans_id": self.ds_trans_id,
          "version": self.version,
          "authentication_flow": self.authentication_flow,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "xid"
        self.xid = data["xid"]
      end
      if data.include? "trans_status"
        self.trans_status = data["trans_status"]
      end
      if data.include? "eci"
        self.eci = data["eci"]
      end
      if data.include? "cavv"
        self.cavv = data["cavv"]
      end
      if data.include? "ds_trans_id"
        self.ds_trans_id = data["ds_trans_id"]
      end
      if data.include? "version"
        self.version = data["version"]
      end
      if data.include? "authentication_flow"
        self.authentication_flow = data["authentication_flow"]
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
      self.xid = data.fetch(:xid, self.xid)
      self.trans_status = data.fetch(:trans_status, self.trans_status)
      self.eci = data.fetch(:eci, self.eci)
      self.cavv = data.fetch(:cavv, self.cavv)
      self.ds_trans_id = data.fetch(:ds_trans_id, self.ds_trans_id)
      self.version = data.fetch(:version, self.version)
      self.authentication_flow = data.fetch(:authentication_flow, self.authentication_flow)
      
      self
    end

    
  end
end
