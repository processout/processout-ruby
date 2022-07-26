# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class AlternativeMerchantCertificate
    
    attr_reader :id

    
    def id=(val)
      @id = val
    end
    

    # Initializes the AlternativeMerchantCertificate object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      
    end

    # Create a new AlternativeMerchantCertificate using the current client
    def new(data = {})
      AlternativeMerchantCertificate.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
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
      self.id = data.fetch(:id, self.id)
      
      self
    end

    # Save new alternative apple pay certificates
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/applepay/alternative-merchant-certificates"
      data    = {

      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["alternative_merchant_certificate"]
      alternative_merchant_certificate = AlternativeMerchantCertificate.new(@client)
      return_values.push(alternative_merchant_certificate.fill_with_data(body))

      
      return_values[0]
    end

    # Delete a given alternative merchant certificate
    # Params:
    # +options+:: +Hash+ of options
    def delete(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/projects/applepay/alternative-merchant-certificates/" + CGI.escape(@id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
