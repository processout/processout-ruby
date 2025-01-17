require "processout/version"
require "processout/gateway_request"
require "processout/activity"
require "processout/addon"
require "processout/api_version"
require "processout/apple_pay_alternative_merchant_certificates"
require "processout/alternative_merchant_certificate"
require "processout/balances"
require "processout/balance"
require "processout/card"
require "processout/card_information"
require "processout/phone"
require "processout/coupon"
require "processout/customer"
require "processout/customer_phone"
require "processout/token"
require "processout/discount"
require "processout/event"
require "processout/export_layout"
require "processout/export_layout_configuration"
require "processout/export_layout_configuration_column"
require "processout/export_layout_configuration_time"
require "processout/export_layout_configuration_amount"
require "processout/export_layout_configuration_options"
require "processout/export_layout_configuration_configuration_options_time"
require "processout/export_layout_configuration_configuration_options_amount"
require "processout/gateway"
require "processout/gateway_configuration"
require "processout/invoice"
require "processout/native_apm_request"
require "processout/native_apm_parameter_value"
require "processout/invoice_tax"
require "processout/invoice_external_fraud_tools"
require "processout/invoice_risk"
require "processout/invoice_device"
require "processout/invoice_shipping"
require "processout/invoice_shipping_phone"
require "processout/invoice_billing"
require "processout/unsupported_feature_bypass"
require "processout/invoice_detail"
require "processout/customer_action"
require "processout/dunning_action"
require "processout/payout"
require "processout/payout_item"
require "processout/payout_item_amount_breakdowns"
require "processout/plan"
require "processout/product"
require "processout/project"
require "processout/project_sftp_settings"
require "processout/project_sftp_settings_public"
require "processout/refund"
require "processout/subscription"
require "processout/transaction"
require "processout/native_apm_response"
require "processout/native_apm_parameter_definition"
require "processout/native_apm_parameter_value_definition"
require "processout/three_ds"
require "processout/payment_data_three_ds_request"
require "processout/payment_data_network_authentication"
require "processout/payment_data_three_ds_authentication"
require "processout/transaction_operation"
require "processout/webhook"
require "processout/webhook_endpoint"
require "processout/card_create_request"
require "processout/device"
require "processout/card_contact"
require "processout/card_shipping"
require "processout/card_update_request"
require "processout/error_codes"
require "processout/category_error_codes"
require "processout/external_three_ds"
require "processout/native_apm_transaction_details_gateway"
require "processout/native_apm_transaction_details_invoice"
require "processout/native_apm_transaction_details"

module ProcessOut
  class Client
    attr_reader :host, :project_id, :project_secret

    def initialize(project_id, project_secret)
      @host = "https://api.processout.com"

      @project_id = project_id
      @project_secret = project_secret
    end

    # Create a new Activity instance
    def activity(data = {})
      obj = Activity.new(self, data)
    end

    # Create a new Addon instance
    def addon(data = {})
      obj = Addon.new(self, data)
    end

    # Create a new APIVersion instance
    def api_version(data = {})
      obj = APIVersion.new(self, data)
    end

    # Create a new ApplePayAlternativeMerchantCertificates instance
    def apple_pay_alternative_merchant_certificates(data = {})
      obj = ApplePayAlternativeMerchantCertificates.new(self, data)
    end

    # Create a new AlternativeMerchantCertificate instance
    def alternative_merchant_certificate(data = {})
      obj = AlternativeMerchantCertificate.new(self, data)
    end

    # Create a new Balances instance
    def balances(data = {})
      obj = Balances.new(self, data)
    end

    # Create a new Balance instance
    def balance(data = {})
      obj = Balance.new(self, data)
    end

    # Create a new Card instance
    def card(data = {})
      obj = Card.new(self, data)
    end

    # Create a new CardInformation instance
    def card_information(data = {})
      obj = CardInformation.new(self, data)
    end

    # Create a new Phone instance
    def phone(data = {})
      obj = Phone.new(self, data)
    end

    # Create a new Coupon instance
    def coupon(data = {})
      obj = Coupon.new(self, data)
    end

    # Create a new Customer instance
    def customer(data = {})
      obj = Customer.new(self, data)
    end

    # Create a new CustomerPhone instance
    def customer_phone(data = {})
      obj = CustomerPhone.new(self, data)
    end

    # Create a new Token instance
    def token(data = {})
      obj = Token.new(self, data)
    end

    # Create a new Discount instance
    def discount(data = {})
      obj = Discount.new(self, data)
    end

    # Create a new Event instance
    def event(data = {})
      obj = Event.new(self, data)
    end

    # Create a new ExportLayout instance
    def export_layout(data = {})
      obj = ExportLayout.new(self, data)
    end

    # Create a new ExportLayoutConfiguration instance
    def export_layout_configuration(data = {})
      obj = ExportLayoutConfiguration.new(self, data)
    end

    # Create a new ExportLayoutConfigurationColumn instance
    def export_layout_configuration_column(data = {})
      obj = ExportLayoutConfigurationColumn.new(self, data)
    end

    # Create a new ExportLayoutConfigurationTime instance
    def export_layout_configuration_time(data = {})
      obj = ExportLayoutConfigurationTime.new(self, data)
    end

    # Create a new ExportLayoutConfigurationAmount instance
    def export_layout_configuration_amount(data = {})
      obj = ExportLayoutConfigurationAmount.new(self, data)
    end

    # Create a new ExportLayoutConfigurationOptions instance
    def export_layout_configuration_options(data = {})
      obj = ExportLayoutConfigurationOptions.new(self, data)
    end

    # Create a new ExportLayoutConfigurationConfigurationOptionsTime instance
    def export_layout_configuration_configuration_options_time(data = {})
      obj = ExportLayoutConfigurationConfigurationOptionsTime.new(self, data)
    end

    # Create a new ExportLayoutConfigurationConfigurationOptionsAmount instance
    def export_layout_configuration_configuration_options_amount(data = {})
      obj = ExportLayoutConfigurationConfigurationOptionsAmount.new(self, data)
    end

    # Create a new Gateway instance
    def gateway(data = {})
      obj = Gateway.new(self, data)
    end

    # Create a new GatewayConfiguration instance
    def gateway_configuration(data = {})
      obj = GatewayConfiguration.new(self, data)
    end

    # Create a new Invoice instance
    def invoice(data = {})
      obj = Invoice.new(self, data)
    end

    # Create a new NativeAPMRequest instance
    def native_apm_request(data = {})
      obj = NativeAPMRequest.new(self, data)
    end

    # Create a new NativeAPMParameterValue instance
    def native_apm_parameter_value(data = {})
      obj = NativeAPMParameterValue.new(self, data)
    end

    # Create a new InvoiceTax instance
    def invoice_tax(data = {})
      obj = InvoiceTax.new(self, data)
    end

    # Create a new InvoiceExternalFraudTools instance
    def invoice_external_fraud_tools(data = {})
      obj = InvoiceExternalFraudTools.new(self, data)
    end

    # Create a new InvoiceRisk instance
    def invoice_risk(data = {})
      obj = InvoiceRisk.new(self, data)
    end

    # Create a new InvoiceDevice instance
    def invoice_device(data = {})
      obj = InvoiceDevice.new(self, data)
    end

    # Create a new InvoiceShipping instance
    def invoice_shipping(data = {})
      obj = InvoiceShipping.new(self, data)
    end

    # Create a new InvoiceShippingPhone instance
    def invoice_shipping_phone(data = {})
      obj = InvoiceShippingPhone.new(self, data)
    end

    # Create a new InvoiceBilling instance
    def invoice_billing(data = {})
      obj = InvoiceBilling.new(self, data)
    end

    # Create a new UnsupportedFeatureBypass instance
    def unsupported_feature_bypass(data = {})
      obj = UnsupportedFeatureBypass.new(self, data)
    end

    # Create a new InvoiceDetail instance
    def invoice_detail(data = {})
      obj = InvoiceDetail.new(self, data)
    end

    # Create a new CustomerAction instance
    def customer_action(data = {})
      obj = CustomerAction.new(self, data)
    end

    # Create a new DunningAction instance
    def dunning_action(data = {})
      obj = DunningAction.new(self, data)
    end

    # Create a new Payout instance
    def payout(data = {})
      obj = Payout.new(self, data)
    end

    # Create a new PayoutItem instance
    def payout_item(data = {})
      obj = PayoutItem.new(self, data)
    end

    # Create a new PayoutItemAmountBreakdowns instance
    def payout_item_amount_breakdowns(data = {})
      obj = PayoutItemAmountBreakdowns.new(self, data)
    end

    # Create a new Plan instance
    def plan(data = {})
      obj = Plan.new(self, data)
    end

    # Create a new Product instance
    def product(data = {})
      obj = Product.new(self, data)
    end

    # Create a new Project instance
    def project(data = {})
      obj = Project.new(self, data)
    end

    # Create a new ProjectSFTPSettings instance
    def project_sftp_settings(data = {})
      obj = ProjectSFTPSettings.new(self, data)
    end

    # Create a new ProjectSFTPSettingsPublic instance
    def project_sftp_settings_public(data = {})
      obj = ProjectSFTPSettingsPublic.new(self, data)
    end

    # Create a new Refund instance
    def refund(data = {})
      obj = Refund.new(self, data)
    end

    # Create a new Subscription instance
    def subscription(data = {})
      obj = Subscription.new(self, data)
    end

    # Create a new Transaction instance
    def transaction(data = {})
      obj = Transaction.new(self, data)
    end

    # Create a new NativeAPMResponse instance
    def native_apm_response(data = {})
      obj = NativeAPMResponse.new(self, data)
    end

    # Create a new NativeAPMParameterDefinition instance
    def native_apm_parameter_definition(data = {})
      obj = NativeAPMParameterDefinition.new(self, data)
    end

    # Create a new NativeAPMParameterValueDefinition instance
    def native_apm_parameter_value_definition(data = {})
      obj = NativeAPMParameterValueDefinition.new(self, data)
    end

    # Create a new ThreeDS instance
    def three_ds(data = {})
      obj = ThreeDS.new(self, data)
    end

    # Create a new PaymentDataThreeDSRequest instance
    def payment_data_three_ds_request(data = {})
      obj = PaymentDataThreeDSRequest.new(self, data)
    end

    # Create a new PaymentDataNetworkAuthentication instance
    def payment_data_network_authentication(data = {})
      obj = PaymentDataNetworkAuthentication.new(self, data)
    end

    # Create a new PaymentDataThreeDSAuthentication instance
    def payment_data_three_ds_authentication(data = {})
      obj = PaymentDataThreeDSAuthentication.new(self, data)
    end

    # Create a new TransactionOperation instance
    def transaction_operation(data = {})
      obj = TransactionOperation.new(self, data)
    end

    # Create a new Webhook instance
    def webhook(data = {})
      obj = Webhook.new(self, data)
    end

    # Create a new WebhookEndpoint instance
    def webhook_endpoint(data = {})
      obj = WebhookEndpoint.new(self, data)
    end

    # Create a new CardCreateRequest instance
    def card_create_request(data = {})
      obj = CardCreateRequest.new(self, data)
    end

    # Create a new Device instance
    def device(data = {})
      obj = Device.new(self, data)
    end

    # Create a new CardContact instance
    def card_contact(data = {})
      obj = CardContact.new(self, data)
    end

    # Create a new CardShipping instance
    def card_shipping(data = {})
      obj = CardShipping.new(self, data)
    end

    # Create a new CardUpdateRequest instance
    def card_update_request(data = {})
      obj = CardUpdateRequest.new(self, data)
    end

    # Create a new ErrorCodes instance
    def error_codes(data = {})
      obj = ErrorCodes.new(self, data)
    end

    # Create a new CategoryErrorCodes instance
    def category_error_codes(data = {})
      obj = CategoryErrorCodes.new(self, data)
    end

    # Create a new ExternalThreeDS instance
    def external_three_ds(data = {})
      obj = ExternalThreeDS.new(self, data)
    end

    # Create a new NativeAPMTransactionDetailsGateway instance
    def native_apm_transaction_details_gateway(data = {})
      obj = NativeAPMTransactionDetailsGateway.new(self, data)
    end

    # Create a new NativeAPMTransactionDetailsInvoice instance
    def native_apm_transaction_details_invoice(data = {})
      obj = NativeAPMTransactionDetailsInvoice.new(self, data)
    end

    # Create a new NativeAPMTransactionDetails instance
    def native_apm_transaction_details(data = {})
      obj = NativeAPMTransactionDetails.new(self, data)
    end

    
  end
end