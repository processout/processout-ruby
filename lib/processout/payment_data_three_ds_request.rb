# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class PaymentDataThreeDSRequest
    
    attr_reader :acs_url
    attr_reader :pareq
    attr_reader :md
    attr_reader :term_url

    
    def acs_url=(val)
      @acs_url = val
    end
    
    def pareq=(val)
      @pareq = val
    end
    
    def md=(val)
      @md = val
    end
    
    def term_url=(val)
      @term_url = val
    end
    

    # Initializes the PaymentDataThreeDSRequest object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.acs_url = data.fetch(:acs_url, nil)
      self.pareq = data.fetch(:pareq, nil)
      self.md = data.fetch(:md, nil)
      self.term_url = data.fetch(:term_url, nil)
      
    end

    # Create a new PaymentDataThreeDSRequest using the current client
    def new(data = {})
      PaymentDataThreeDSRequest.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "acs_url"
        self.acs_url = data["acs_url"]
      end
      if data.include? "pareq"
        self.pareq = data["pareq"]
      end
      if data.include? "md"
        self.md = data["md"]
      end
      if data.include? "term_url"
        self.term_url = data["term_url"]
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
      self.acs_url = data.fetch(:acs_url, self.acs_url)
      self.pareq = data.fetch(:pareq, self.pareq)
      self.md = data.fetch(:md, self.md)
      self.term_url = data.fetch(:term_url, self.term_url)
      
      self
    end

    
  end
end
