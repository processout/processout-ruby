module ProcessOut
  class ValidationError < StandardError
    def initialize(msg)
      super
    end
  end
end