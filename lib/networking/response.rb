require "net/http"
require "json"

require_relative "../errors/authentication_error"
require_relative "../errors/generic_error"
require_relative "../errors/internal_error"
require_relative "../errors/notfound_error"
require_relative "../errors/validation_error"

module ProcessOut
    class Response
        attr_reader :body

        def initialize(resp)
            @resp = resp
            @status = resp.code.to_i
            @body = JSON.parse(resp.body)
            self.check
        end

        def success
            if @body.include? "success"
                return @body["success"]
            end
            false
        end

        def message
            if @body.include? "message"
                return @body["message"]
            end
            ""
        end

        def check
            unless self.success
                if @status == 404
                    raise NotFoundError, self.message
                end
                if @status == 401
                    raise AuthenticationError, self.message
                end
                if @status == 400
                    raise ValidationError, self.message
                end
                if @status >= 500
                    raise InternalError, "ProcessOut returned an internal error (" +
                        @status.to_s + "): " + self.message
                end

                raise GenericError, "ProcessOut returned an error (" +
                    @status.to_s + "): " + self.message
            end
        end
        protected :check
    end
end