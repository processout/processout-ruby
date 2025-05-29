# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Balances
    
    attr_reader :vouchers
    attr_reader :available_balance
    attr_reader :customer_action

    
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
    
    def available_balance=(val)
      if val.nil?
        @available_balance = val
        return
      end

      if val.instance_of? Balance
        @available_balance = val
      else
        obj = Balance.new(@client)
        obj.fill_with_data(val)
        @available_balance = obj
      end
      
    end
    
    def customer_action=(val)
      if val.nil?
        @customer_action = val
        return
      end

      if val.instance_of? BalancesCustomerAction
        @customer_action = val
      else
        obj = BalancesCustomerAction.new(@client)
        obj.fill_with_data(val)
        @customer_action = obj
      end
      
    end
    

    # Initializes the Balances object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.vouchers = data.fetch(:vouchers, nil)
      self.available_balance = data.fetch(:available_balance, nil)
      self.customer_action = data.fetch(:customer_action, nil)
      
    end

    # Create a new Balances using the current client
    def new(data = {})
      Balances.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "vouchers": self.vouchers,
          "available_balance": self.available_balance,
          "customer_action": self.customer_action,
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
      if data.include? "available_balance"
        self.available_balance = data["available_balance"]
      end
      if data.include? "customer_action"
        self.customer_action = data["customer_action"]
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
      self.available_balance = data.fetch(:available_balance, self.available_balance)
      self.customer_action = data.fetch(:customer_action, self.customer_action)
      
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
