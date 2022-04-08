# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ApplePayAlternativeMerchantCertificates
    
    attr_reader :alternative_merchant_certificates

    
    def alternative_merchant_certificates=(val)
      if val.nil?
        @alternative_merchant_certificates = []
        return
      end

      if val.length > 0 and val[0].instance_of? AlternativeMerchantCertificate
        @alternative_merchant_certificates = val
      else
        l = Array.new
        for v in val
          obj = AlternativeMerchantCertificate.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @alternative_merchant_certificates = l
      end
      
    end
    

    # Initializes the ApplePayAlternativeMerchantCertificates object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.alternative_merchant_certificates = data.fetch(:alternative_merchant_certificates, nil)
      
    end

    # Create a new ApplePayAlternativeMerchantCertificates using the current client
    def new(data = {})
      ApplePayAlternativeMerchantCertificates.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "alternative_merchant_certificates": self.alternative_merchant_certificates,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "alternative_merchant_certificates"
        self.alternative_merchant_certificates = data["alternative_merchant_certificates"]
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
      self.alternative_merchant_certificates = data.fetch(:alternative_merchant_certificates, self.alternative_merchant_certificates)
      
      self
    end

    # Fetch the project's alternative certificates by ID
    # Params:
    # +options+:: +Hash+ of options
    def fetch(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/applepay/alternative-merchant-certificates"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["applepay_certificates"]
      apple_pay_alternative_merchant_certificates = ApplePayAlternativeMerchantCertificates.new(@client)
      return_values.push(apple_pay_alternative_merchant_certificates.fill_with_data(body))

      
      return_values[0]
    end

    
  end
end
