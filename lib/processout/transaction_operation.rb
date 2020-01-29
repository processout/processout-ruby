# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class TransactionOperation
    
    attr_reader :id
    attr_reader :transaction
    attr_reader :transaction_id
    attr_reader :token
    attr_reader :token_id
    attr_reader :card
    attr_reader :card_id
    attr_reader :gateway_configuration
    attr_reader :gateway_configuration_id
    attr_reader :amount
    attr_reader :currency
    attr_reader :is_attempt
    attr_reader :has_failed
    attr_reader :is_accountable
    attr_reader :type
    attr_reader :gateway_operation_id
    attr_reader :arn
    attr_reader :error_code
    attr_reader :gateway_data
    attr_reader :payment_data_three_d_s_request
    attr_reader :payment_data_three_d_s_authentication
    attr_reader :payment_data_network_authentication
    attr_reader :metadata
    attr_reader :gateway_fee
    attr_reader :created_at

    
    def id=(val)
      @id = val
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
    
    def token=(val)
      if val.nil?
        @token = val
        return
      end

      if val.instance_of? Token
        @token = val
      else
        obj = Token.new(@client)
        obj.fill_with_data(val)
        @token = obj
      end
      
    end
    
    def token_id=(val)
      @token_id = val
    end
    
    def card=(val)
      if val.nil?
        @card = val
        return
      end

      if val.instance_of? Card
        @card = val
      else
        obj = Card.new(@client)
        obj.fill_with_data(val)
        @card = obj
      end
      
    end
    
    def card_id=(val)
      @card_id = val
    end
    
    def gateway_configuration=(val)
      if val.nil?
        @gateway_configuration = val
        return
      end

      if val.instance_of? GatewayConfiguration
        @gateway_configuration = val
      else
        obj = GatewayConfiguration.new(@client)
        obj.fill_with_data(val)
        @gateway_configuration = obj
      end
      
    end
    
    def gateway_configuration_id=(val)
      @gateway_configuration_id = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def is_attempt=(val)
      @is_attempt = val
    end
    
    def has_failed=(val)
      @has_failed = val
    end
    
    def is_accountable=(val)
      @is_accountable = val
    end
    
    def type=(val)
      @type = val
    end
    
    def gateway_operation_id=(val)
      @gateway_operation_id = val
    end
    
    def arn=(val)
      @arn = val
    end
    
    def error_code=(val)
      @error_code = val
    end
    
    def gateway_data=(val)
      @gateway_data = val
    end
    
    def payment_data_three_d_s_request=(val)
      if val.nil?
        @payment_data_three_d_s_request = val
        return
      end

      if val.instance_of? PaymentDataThreeDSRequest
        @payment_data_three_d_s_request = val
      else
        obj = PaymentDataThreeDSRequest.new(@client)
        obj.fill_with_data(val)
        @payment_data_three_d_s_request = obj
      end
      
    end
    
    def payment_data_three_d_s_authentication=(val)
      if val.nil?
        @payment_data_three_d_s_authentication = val
        return
      end

      if val.instance_of? PaymentDataThreeDSAuthentication
        @payment_data_three_d_s_authentication = val
      else
        obj = PaymentDataThreeDSAuthentication.new(@client)
        obj.fill_with_data(val)
        @payment_data_three_d_s_authentication = obj
      end
      
    end
    
    def payment_data_network_authentication=(val)
      if val.nil?
        @payment_data_network_authentication = val
        return
      end

      if val.instance_of? PaymentDataNetworkAuthentication
        @payment_data_network_authentication = val
      else
        obj = PaymentDataNetworkAuthentication.new(@client)
        obj.fill_with_data(val)
        @payment_data_network_authentication = obj
      end
      
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def gateway_fee=(val)
      @gateway_fee = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the TransactionOperation object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.transaction = data.fetch(:transaction, nil)
      self.transaction_id = data.fetch(:transaction_id, nil)
      self.token = data.fetch(:token, nil)
      self.token_id = data.fetch(:token_id, nil)
      self.card = data.fetch(:card, nil)
      self.card_id = data.fetch(:card_id, nil)
      self.gateway_configuration = data.fetch(:gateway_configuration, nil)
      self.gateway_configuration_id = data.fetch(:gateway_configuration_id, nil)
      self.amount = data.fetch(:amount, nil)
      self.currency = data.fetch(:currency, nil)
      self.is_attempt = data.fetch(:is_attempt, nil)
      self.has_failed = data.fetch(:has_failed, nil)
      self.is_accountable = data.fetch(:is_accountable, nil)
      self.type = data.fetch(:type, nil)
      self.gateway_operation_id = data.fetch(:gateway_operation_id, nil)
      self.arn = data.fetch(:arn, nil)
      self.error_code = data.fetch(:error_code, nil)
      self.gateway_data = data.fetch(:gateway_data, nil)
      self.payment_data_three_d_s_request = data.fetch(:payment_data_three_d_s_request, nil)
      self.payment_data_three_d_s_authentication = data.fetch(:payment_data_three_d_s_authentication, nil)
      self.payment_data_network_authentication = data.fetch(:payment_data_network_authentication, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.gateway_fee = data.fetch(:gateway_fee, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new TransactionOperation using the current client
    def new(data = {})
      TransactionOperation.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "transaction": self.transaction,
          "transaction_id": self.transaction_id,
          "token": self.token,
          "token_id": self.token_id,
          "card": self.card,
          "card_id": self.card_id,
          "gateway_configuration": self.gateway_configuration,
          "gateway_configuration_id": self.gateway_configuration_id,
          "amount": self.amount,
          "currency": self.currency,
          "is_attempt": self.is_attempt,
          "has_failed": self.has_failed,
          "is_accountable": self.is_accountable,
          "type": self.type,
          "gateway_operation_id": self.gateway_operation_id,
          "arn": self.arn,
          "error_code": self.error_code,
          "gateway_data": self.gateway_data,
          "payment_data_three_d_s_request": self.payment_data_three_d_s_request,
          "payment_data_three_d_s_authentication": self.payment_data_three_d_s_authentication,
          "payment_data_network_authentication": self.payment_data_network_authentication,
          "metadata": self.metadata,
          "gateway_fee": self.gateway_fee,
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
      if data.include? "transaction"
        self.transaction = data["transaction"]
      end
      if data.include? "transaction_id"
        self.transaction_id = data["transaction_id"]
      end
      if data.include? "token"
        self.token = data["token"]
      end
      if data.include? "token_id"
        self.token_id = data["token_id"]
      end
      if data.include? "card"
        self.card = data["card"]
      end
      if data.include? "card_id"
        self.card_id = data["card_id"]
      end
      if data.include? "gateway_configuration"
        self.gateway_configuration = data["gateway_configuration"]
      end
      if data.include? "gateway_configuration_id"
        self.gateway_configuration_id = data["gateway_configuration_id"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "is_attempt"
        self.is_attempt = data["is_attempt"]
      end
      if data.include? "has_failed"
        self.has_failed = data["has_failed"]
      end
      if data.include? "is_accountable"
        self.is_accountable = data["is_accountable"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "gateway_operation_id"
        self.gateway_operation_id = data["gateway_operation_id"]
      end
      if data.include? "arn"
        self.arn = data["arn"]
      end
      if data.include? "error_code"
        self.error_code = data["error_code"]
      end
      if data.include? "gateway_data"
        self.gateway_data = data["gateway_data"]
      end
      if data.include? "payment_data_three_d_s_request"
        self.payment_data_three_d_s_request = data["payment_data_three_d_s_request"]
      end
      if data.include? "payment_data_three_d_s_authentication"
        self.payment_data_three_d_s_authentication = data["payment_data_three_d_s_authentication"]
      end
      if data.include? "payment_data_network_authentication"
        self.payment_data_network_authentication = data["payment_data_network_authentication"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "gateway_fee"
        self.gateway_fee = data["gateway_fee"]
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
      self.transaction = data.fetch(:transaction, self.transaction)
      self.transaction_id = data.fetch(:transaction_id, self.transaction_id)
      self.token = data.fetch(:token, self.token)
      self.token_id = data.fetch(:token_id, self.token_id)
      self.card = data.fetch(:card, self.card)
      self.card_id = data.fetch(:card_id, self.card_id)
      self.gateway_configuration = data.fetch(:gateway_configuration, self.gateway_configuration)
      self.gateway_configuration_id = data.fetch(:gateway_configuration_id, self.gateway_configuration_id)
      self.amount = data.fetch(:amount, self.amount)
      self.currency = data.fetch(:currency, self.currency)
      self.is_attempt = data.fetch(:is_attempt, self.is_attempt)
      self.has_failed = data.fetch(:has_failed, self.has_failed)
      self.is_accountable = data.fetch(:is_accountable, self.is_accountable)
      self.type = data.fetch(:type, self.type)
      self.gateway_operation_id = data.fetch(:gateway_operation_id, self.gateway_operation_id)
      self.arn = data.fetch(:arn, self.arn)
      self.error_code = data.fetch(:error_code, self.error_code)
      self.gateway_data = data.fetch(:gateway_data, self.gateway_data)
      self.payment_data_three_d_s_request = data.fetch(:payment_data_three_d_s_request, self.payment_data_three_d_s_request)
      self.payment_data_three_d_s_authentication = data.fetch(:payment_data_three_d_s_authentication, self.payment_data_three_d_s_authentication)
      self.payment_data_network_authentication = data.fetch(:payment_data_network_authentication, self.payment_data_network_authentication)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.gateway_fee = data.fetch(:gateway_fee, self.gateway_fee)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    
  end
end
