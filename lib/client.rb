require_relative "activity"
require_relative "authorization_request"
require_relative "card"
require_relative "coupon"
require_relative "customer"
require_relative "token"
require_relative "discount"
require_relative "event"
require_relative "gateway"
require_relative "gateway_configuration"
require_relative "invoice"
require_relative "customer_action"
require_relative "plan"
require_relative "product"
require_relative "project"
require_relative "refund"
require_relative "subscription"
require_relative "transaction"
require_relative "webhook"

module ProcessOut
  class Client
    attr_reader :host, :project_id, :project_secret

    def initialize(project_id, project_secret)
      @host = "https://api.processout.com"

      @project_id = project_id
      @project_secret = project_secret
    end

    # Create a new Activity instance
    def new_activity()
      Activity.new(self)
    end

    # Create a new AuthorizationRequest instance
    def new_authorization_request()
      AuthorizationRequest.new(self)
    end

    # Create a new Card instance
    def new_card()
      Card.new(self)
    end

    # Create a new Coupon instance
    def new_coupon()
      Coupon.new(self)
    end

    # Create a new Customer instance
    def new_customer()
      Customer.new(self)
    end

    # Create a new Token instance
    def new_token()
      Token.new(self)
    end

    # Create a new Discount instance
    def new_discount()
      Discount.new(self)
    end

    # Create a new Event instance
    def new_event()
      Event.new(self)
    end

    # Create a new Gateway instance
    def new_gateway()
      Gateway.new(self)
    end

    # Create a new GatewayConfiguration instance
    def new_gateway_configuration()
      GatewayConfiguration.new(self)
    end

    # Create a new Invoice instance
    def new_invoice()
      Invoice.new(self)
    end

    # Create a new CustomerAction instance
    def new_customer_action()
      CustomerAction.new(self)
    end

    # Create a new Plan instance
    def new_plan()
      Plan.new(self)
    end

    # Create a new Product instance
    def new_product()
      Product.new(self)
    end

    # Create a new Project instance
    def new_project()
      Project.new(self)
    end

    # Create a new Refund instance
    def new_refund()
      Refund.new(self)
    end

    # Create a new Subscription instance
    def new_subscription()
      Subscription.new(self)
    end

    # Create a new Transaction instance
    def new_transaction()
      Transaction.new(self)
    end

    # Create a new Webhook instance
    def new_webhook()
      Webhook.new(self)
    end

    
  end
end