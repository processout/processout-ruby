require "net/http"
require "json"

require "processout/errors/authentication_error"
require "processout/errors/generic_error"
require "processout/errors/internal_error"
require "processout/errors/notfound_error"
require "processout/errors/validation_error"

module ProcessOut
  class Response
  attr_reader :body

    def initialize(resp)
      @resp = resp
      @status = resp.code.to_i
      @body = JSON.parse(resp.body)
      self.check
    end

    # Success returns whether or not the response returned a successful message
    def success
      if @body.include? "success"
        return @body["success"]
      end
      false
    end

    # Code returns the error code contained in the response, if any
    def code
      if @body.include? "error_type"
        return @body["error_type"]
      end
      ""
    end

    # Message returns the error message contained in the response, if any
    def message
      if @body.include? "message"
        return @body["message"]
      end
      ""
    end

    # Check checks the response didn't contain any error, or raises an
    # error if one was found
    def check
      unless self.success
        if @status == 404
          raise NotFoundError.new(self.code, self.message)
        end
        if @status == 401
          raise AuthenticationError.new(self.code, self.message)
        end
        if @status == 400
          raise ValidationError.new(self.code, self.message)
        end
        if @status >= 500
          raise InternalError.new(self.code, self.message)
        end

        raise GenericError.new(self.code, self.message)
      end
    end
    protected :check
  end
end