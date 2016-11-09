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

        def new_activity()
            Activity.new(self)
        end

        def new_authorization_request()
            AuthorizationRequest.new(self)
        end

        def new_card()
            Card.new(self)
        end

        def new_coupon()
            Coupon.new(self)
        end

        def new_customer()
            Customer.new(self)
        end

        def new_token()
            Token.new(self)
        end

        def new_discount()
            Discount.new(self)
        end

        def new_event()
            Event.new(self)
        end

        def new_gateway()
            Gateway.new(self)
        end

        def new_gateway_configuration()
            GatewayConfiguration.new(self)
        end

        def new_invoice()
            Invoice.new(self)
        end

        def new_customer_action()
            CustomerAction.new(self)
        end

        def new_plan()
            Plan.new(self)
        end

        def new_product()
            Product.new(self)
        end

        def new_project()
            Project.new(self)
        end

        def new_refund()
            Refund.new(self)
        end

        def new_subscription()
            Subscription.new(self)
        end

        def new_transaction()
            Transaction.new(self)
        end

        def new_webhook()
            Webhook.new(self)
        end

        
    end
end