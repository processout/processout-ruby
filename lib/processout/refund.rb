# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Refund
    
    attr_reader :id
    attr_reader :transaction
    attr_reader :reason
    attr_reader :information
    attr_reader :amount
    attr_reader :metadata
    attr_reader :sandbox
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def transaction=(val)
      if val.instance_of? Transaction
        @transaction = val
      else
        obj = Transaction.new(@client)
        obj.fill_with_data(val)
        @transaction = obj
      end
      
    end
    
    def reason=(val)
      @reason = val
    end
    
    def information=(val)
      @information = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Refund object
    # Params:
    # +client+:: +ProcessOut+ client instance
    def initialize(client)
      @client = client

      @id = ""
      @transaction = nil
      @reason = ""
      @information = ""
      @amount = ""
      @metadata = Hash.new
      @sandbox = false
      @created_at = ""
      
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        @id = data["id"]
      end
      if data.include? "transaction"
        @transaction = data["transaction"]
      end
      if data.include? "reason"
        @reason = data["reason"]
      end
      if data.include? "information"
        @information = data["information"]
      end
      if data.include? "amount"
        @amount = data["amount"]
      end
      if data.include? "metadata"
        @metadata = data["metadata"]
      end
      if data.include? "sandbox"
        @sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        @created_at = data["created_at"]
      end
      
      self
    end

    # Find a transaction's refund by its ID.
    # Params:
    # +transaction_id+:: ID of the transaction
    # +refund_id+:: ID of the refund
    # +options+:: +Hash+ of options
    def find(transaction_id, refund_id, options = nil)
      request = Request.new(@client)
      path    = "/transactions/" + CGI.escape(transaction_id) + "/refunds/" + CGI.escape(refund_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["refund"]
      
      
      obj = Refund.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Apply a refund to a transaction.
    # Params:
    # +transaction_id+:: ID of the transaction
    # +options+:: +Hash+ of options
    def apply(transaction_id, options = nil)
      request = Request.new(@client)
      path    = "/transactions/" + CGI.escape(transaction_id) + "/refunds"
      data    = {
        "amount": @amount, 
        "metadata": @metadata, 
        "reason": @reason, 
        "information": @information
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
