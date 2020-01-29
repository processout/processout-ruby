# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class PayoutItem
    
    attr_reader :id
    attr_reader :project
    attr_reader :project_id
    attr_reader :payout
    attr_reader :payout_id
    attr_reader :transaction
    attr_reader :transaction_id
    attr_reader :type
    attr_reader :gateway_resource_id
    attr_reader :amount
    attr_reader :fees
    attr_reader :metadata
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
    
    def payout=(val)
      if val.nil?
        @payout = val
        return
      end

      if val.instance_of? Payout
        @payout = val
      else
        obj = Payout.new(@client)
        obj.fill_with_data(val)
        @payout = obj
      end
      
    end
    
    def payout_id=(val)
      @payout_id = val
    end
    
    def transaction=(val)
      if val.nil?
        @transaction = val
        return
      end

      if val.instance_of? Transaction
        @transaction = val
      else
        obj = Transaction.new(@client)
        obj.fill_with_data(val)
        @transaction = obj
      end
      
    end
    
    def transaction_id=(val)
      @transaction_id = val
    end
    
    def type=(val)
      @type = val
    end
    
    def gateway_resource_id=(val)
      @gateway_resource_id = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def fees=(val)
      @fees = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the PayoutItem object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.project_id = data.fetch(:project_id, nil)
      self.payout = data.fetch(:payout, nil)
      self.payout_id = data.fetch(:payout_id, nil)
      self.transaction = data.fetch(:transaction, nil)
      self.transaction_id = data.fetch(:transaction_id, nil)
      self.type = data.fetch(:type, nil)
      self.gateway_resource_id = data.fetch(:gateway_resource_id, nil)
      self.amount = data.fetch(:amount, nil)
      self.fees = data.fetch(:fees, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new PayoutItem using the current client
    def new(data = {})
      PayoutItem.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "project": self.project,
          "project_id": self.project_id,
          "payout": self.payout,
          "payout_id": self.payout_id,
          "transaction": self.transaction,
          "transaction_id": self.transaction_id,
          "type": self.type,
          "gateway_resource_id": self.gateway_resource_id,
          "amount": self.amount,
          "fees": self.fees,
          "metadata": self.metadata,
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
      if data.include? "payout"
        self.payout = data["payout"]
      end
      if data.include? "payout_id"
        self.payout_id = data["payout_id"]
      end
      if data.include? "transaction"
        self.transaction = data["transaction"]
      end
      if data.include? "transaction_id"
        self.transaction_id = data["transaction_id"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "gateway_resource_id"
        self.gateway_resource_id = data["gateway_resource_id"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "fees"
        self.fees = data["fees"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
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
      self.payout = data.fetch(:payout, self.payout)
      self.payout_id = data.fetch(:payout_id, self.payout_id)
      self.transaction = data.fetch(:transaction, self.transaction)
      self.transaction_id = data.fetch(:transaction_id, self.transaction_id)
      self.type = data.fetch(:type, self.type)
      self.gateway_resource_id = data.fetch(:gateway_resource_id, self.gateway_resource_id)
      self.amount = data.fetch(:amount, self.amount)
      self.fees = data.fetch(:fees, self.fees)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    
  end
end
