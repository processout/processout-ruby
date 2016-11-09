module ProcessOut
    class AuthenticationError < StandardError
        def initialize(msg)
            super
        end
    end
end
