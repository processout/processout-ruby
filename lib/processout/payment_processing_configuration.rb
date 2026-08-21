# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class PaymentProcessingConfiguration
    
    attr_reader :bypass_unsupported_split_payments
    attr_reader :apm_payment_config

    
    def bypass_unsupported_split_payments=(val)
      @bypass_unsupported_split_payments = val
    end
    
    def apm_payment_config=(val)
      if val.nil?
        @apm_payment_config = val
        return
      end

      if val.instance_of? APMPaymentProcessingConfiguration
        @apm_payment_config = val
      else
        obj = APMPaymentProcessingConfiguration.new(@client)
        obj.fill_with_data(val)
        @apm_payment_config = obj
      end
      
    end
    

    # Initializes the PaymentProcessingConfiguration object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.bypass_unsupported_split_payments = data.fetch(:bypass_unsupported_split_payments, nil)
      self.apm_payment_config = data.fetch(:apm_payment_config, nil)
      
    end

    # Create a new PaymentProcessingConfiguration using the current client
    def new(data = {})
      PaymentProcessingConfiguration.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "bypass_unsupported_split_payments": self.bypass_unsupported_split_payments,
          "apm_payment_config": self.apm_payment_config,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "bypass_unsupported_split_payments"
        self.bypass_unsupported_split_payments = data["bypass_unsupported_split_payments"]
      end
      if data.include? "apm_payment_config"
        self.apm_payment_config = data["apm_payment_config"]
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
      self.bypass_unsupported_split_payments = data.fetch(:bypass_unsupported_split_payments, self.bypass_unsupported_split_payments)
      self.apm_payment_config = data.fetch(:apm_payment_config, self.apm_payment_config)
      
      self
    end

    
  end
end
