require "processout/version"
require "processout/gateway_request"
require "processout/activity"
require "processout/addon"
require "processout/api_request"
require "processout/api_version"
require "processout/authorization_request"
require "processout/card"
require "processout/card_information"
require "processout/coupon"
require "processout/customer"
require "processout/token"
require "processout/discount"
require "processout/event"
require "processout/gateway"
require "processout/gateway_configuration"
require "processout/invoice"
require "processout/invoice_risk"
require "processout/invoice_device"
require "processout/invoice_shipping"
require "processout/invoice_detail"
require "processout/customer_action"
require "processout/dunning_action"
require "processout/payout"
require "processout/payout_item"
require "processout/plan"
require "processout/product"
require "processout/project"
require "processout/refund"
require "processout/subscription"
require "processout/transaction"
require "processout/payment_data_three_ds_request"
require "processout/payment_data_network_authentication"
require "processout/payment_data_three_ds_authentication"
require "processout/transaction_operation"
require "processout/webhook"
require "processout/webhook_endpoint"

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

    # Create a new APIRequest instance
    def api_request(data = {})
      obj = APIRequest.new(self, data)
    end

    # Create a new APIVersion instance
    def api_version(data = {})
      obj = APIVersion.new(self, data)
    end

    # Create a new AuthorizationRequest instance
    def authorization_request(data = {})
      obj = AuthorizationRequest.new(self, data)
    end

    # Create a new Card instance
    def card(data = {})
      obj = Card.new(self, data)
    end

    # Create a new CardInformation instance
    def card_information(data = {})
      obj = CardInformation.new(self, data)
    end

    # Create a new Coupon instance
    def coupon(data = {})
      obj = Coupon.new(self, data)
    end

    # Create a new Customer instance
    def customer(data = {})
      obj = Customer.new(self, data)
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

    
  end
end