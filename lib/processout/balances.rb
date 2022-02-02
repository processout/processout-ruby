# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Balances
    
    attr_reader :vouchers

    
    def vouchers=(val)
      if val.nil?
        @vouchers = []
        return
      end

      if val.length > 0 and val[0].instance_of? Balance
        @vouchers = val
      else
        l = Array.new
        for v in val
          obj = Balance.new(@client)
          obj.fill_with_data(v)
          l.push(obj)
        end
        @vouchers = l
      end
      
    end
    

    # Initializes the Balances object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.vouchers = data.fetch(:vouchers, nil)
      
    end

    # Create a new Balances using the current client
    def new(data = {})
      Balances.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "vouchers": self.vouchers,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "vouchers"
        self.vouchers = data["vouchers"]
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
      self.vouchers = data.fetch(:vouchers, self.vouchers)
      
      self
    end

    # Fetch a customer token's balance
    # Params:
    # +token_id+:: ID of the customer's token
    # +options+:: +Hash+ of options
    def find(token_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/balances/tokens/" + CGI.escape(token_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["balances"]
      balances = Balances.new(@client)
      return_values.push(balances.fill_with_data(body))

      
      return_values[0]
    end

    
  end
end
