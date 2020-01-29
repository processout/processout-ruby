# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Payout
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :status
    attr_reader :amount
    attr_reader :currency
    attr_reader :metadata
    attr_reader :bank_name
    attr_reader :bank_summary
    attr_reader :sales_transactions
    attr_reader :sales_volume
    attr_reader :refunds_transactions
    attr_reader :refunds_volume
    attr_reader :chargebacks_transactions
    attr_reader :chargebacks_volume
    attr_reader :fees
    attr_reader :adjustments
    attr_reader :reserve
    attr_reader :settled_at
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def project=(val)
      if val.nil?
        @project = val
        return
      end

      if val.instance_of? Project
        @project = val
      else
        obj = Project.new(@client)
        obj.fill_with_data(val)
        @project = obj
      end
      
    end
    
    def project_id=(val)
      @project_id = val
    end
    
    def status=(val)
      @status = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def bank_name=(val)
      @bank_name = val
    end
    
    def bank_summary=(val)
      @bank_summary = val
    end
    
    def sales_transactions=(val)
      @sales_transactions = val
    end
    
    def sales_volume=(val)
      @sales_volume = val
    end
    
    def refunds_transactions=(val)
      @refunds_transactions = val
    end
    
    def refunds_volume=(val)
      @refunds_volume = val
    end
    
    def chargebacks_transactions=(val)
      @chargebacks_transactions = val
    end
    
    def chargebacks_volume=(val)
      @chargebacks_volume = val
    end
    
    def fees=(val)
      @fees = val
    end
    
    def adjustments=(val)
      @adjustments = val
    end
    
    def reserve=(val)
      @reserve = val
    end
    
    def settled_at=(val)
      @settled_at = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Payout object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.status = data.fetch(:status, nil)
      self.amount = data.fetch(:amount, nil)
      self.currency = data.fetch(:currency, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.bank_name = data.fetch(:bank_name, nil)
      self.bank_summary = data.fetch(:bank_summary, nil)
      self.sales_transactions = data.fetch(:sales_transactions, nil)
      self.sales_volume = data.fetch(:sales_volume, nil)
      self.refunds_transactions = data.fetch(:refunds_transactions, nil)
      self.refunds_volume = data.fetch(:refunds_volume, nil)
      self.chargebacks_transactions = data.fetch(:chargebacks_transactions, nil)
      self.chargebacks_volume = data.fetch(:chargebacks_volume, nil)
      self.fees = data.fetch(:fees, nil)
      self.adjustments = data.fetch(:adjustments, nil)
      self.reserve = data.fetch(:reserve, nil)
      self.settled_at = data.fetch(:settled_at, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Payout using the current client
    def new(data = {})
      Payout.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "project": self.project,
          "project_id": self.project_id,
          "status": self.status,
          "amount": self.amount,
          "currency": self.currency,
          "metadata": self.metadata,
          "bank_name": self.bank_name,
          "bank_summary": self.bank_summary,
          "sales_transactions": self.sales_transactions,
          "sales_volume": self.sales_volume,
          "refunds_transactions": self.refunds_transactions,
          "refunds_volume": self.refunds_volume,
          "chargebacks_transactions": self.chargebacks_transactions,
          "chargebacks_volume": self.chargebacks_volume,
          "fees": self.fees,
          "adjustments": self.adjustments,
          "reserve": self.reserve,
          "settled_at": self.settled_at,
          "created_at": self.created_at,
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
      if data.include? "project"
        self.project = data["project"]
      end
      if data.include? "project_id"
        self.project_id = data["project_id"]
      end
      if data.include? "status"
        self.status = data["status"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "bank_name"
        self.bank_name = data["bank_name"]
      end
      if data.include? "bank_summary"
        self.bank_summary = data["bank_summary"]
      end
      if data.include? "sales_transactions"
        self.sales_transactions = data["sales_transactions"]
      end
      if data.include? "sales_volume"
        self.sales_volume = data["sales_volume"]
      end
      if data.include? "refunds_transactions"
        self.refunds_transactions = data["refunds_transactions"]
      end
      if data.include? "refunds_volume"
        self.refunds_volume = data["refunds_volume"]
      end
      if data.include? "chargebacks_transactions"
        self.chargebacks_transactions = data["chargebacks_transactions"]
      end
      if data.include? "chargebacks_volume"
        self.chargebacks_volume = data["chargebacks_volume"]
      end
      if data.include? "fees"
        self.fees = data["fees"]
      end
      if data.include? "adjustments"
        self.adjustments = data["adjustments"]
      end
      if data.include? "reserve"
        self.reserve = data["reserve"]
      end
      if data.include? "settled_at"
        self.settled_at = data["settled_at"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
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
      self.project = data.fetch(:project, self.project)
      self.project_id = data.fetch(:project_id, self.project_id)
      self.status = data.fetch(:status, self.status)
      self.amount = data.fetch(:amount, self.amount)
      self.currency = data.fetch(:currency, self.currency)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.bank_name = data.fetch(:bank_name, self.bank_name)
      self.bank_summary = data.fetch(:bank_summary, self.bank_summary)
      self.sales_transactions = data.fetch(:sales_transactions, self.sales_transactions)
      self.sales_volume = data.fetch(:sales_volume, self.sales_volume)
      self.refunds_transactions = data.fetch(:refunds_transactions, self.refunds_transactions)
      self.refunds_volume = data.fetch(:refunds_volume, self.refunds_volume)
      self.chargebacks_transactions = data.fetch(:chargebacks_transactions, self.chargebacks_transactions)
      self.chargebacks_volume = data.fetch(:chargebacks_volume, self.chargebacks_volume)
      self.fees = data.fetch(:fees, self.fees)
      self.adjustments = data.fetch(:adjustments, self.adjustments)
      self.reserve = data.fetch(:reserve, self.reserve)
      self.settled_at = data.fetch(:settled_at, self.settled_at)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    # Get all the items linked to the payout.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_items(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/payouts/" + CGI.escape(@id) + "/items"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['items']
        tmp = PayoutItem.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Get all the payouts.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/payouts"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['payouts']
        tmp = Payout.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Find a payout by its ID.
    # Params:
    # +payout_id+:: ID of the payout
    # +options+:: +Hash+ of options
    def find(payout_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/payouts/" + CGI.escape(payout_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["payout"]
      
      
      obj = Payout.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
