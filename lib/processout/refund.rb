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
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      @id = data.fetch(:id, "")
      @transaction = data.fetch(:transaction, nil)
      @reason = data.fetch(:reason, "")
      @information = data.fetch(:information, "")
      @amount = data.fetch(:amount, "")
      @metadata = data.fetch(:metadata, Hash.new)
      @sandbox = data.fetch(:sandbox, false)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Refund using the current client
    def new(data = {})
      Refund.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        self.id = data["id"]
      end
      if data.include? "transaction"
        self.transaction = data["transaction"]
      end
      if data.include? "reason"
        self.reason = data["reason"]
      end
      if data.include? "information"
        self.information = data["information"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      
      self
    end

    # Find a transaction's refund by its ID.
    # Params:
    # +transaction_id+:: ID of the transaction on which the refund was applied
    # +refund_id+:: ID of the refund
    # +options+:: +Hash+ of options
    def find(transaction_id, refund_id, options = {})
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
    def apply(transaction_id, options = {})
      request = Request.new(@client)
      path    = "/transactions/" + CGI.escape(transaction_id) + "/refunds"
      data    = {
        "amount" => @amount, 
        "metadata" => @metadata, 
        "reason" => @reason, 
        "information" => @information
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      return_values.push(response.success)

      
      return_values[0]
    end

    
  end
end
