require "processout/version"
require "processout/activity"
require "processout/authorization_request"
require "processout/card"
require "processout/coupon"
require "processout/customer"
require "processout/token"
require "processout/discount"
require "processout/event"
require "processout/gateway"
require "processout/gateway_configuration"
require "processout/invoice"
require "processout/customer_action"
require "processout/plan"
require "processout/product"
require "processout/project"
require "processout/refund"
require "processout/subscription"
require "processout/transaction"
require "processout/webhook"

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

    # Create a new AuthorizationRequest instance
    def authorization_request(data = {})
      obj = AuthorizationRequest.new(self, data)
    end

    # Create a new Card instance
    def card(data = {})
      obj = Card.new(self, data)
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

    # Create a new CustomerAction instance
    def customer_action(data = {})
      obj = CustomerAction.new(self, data)
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

    # Create a new Webhook instance
    def webhook(data = {})
      obj = Webhook.new(self, data)
    end

    
  end
end