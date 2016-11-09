module ProcessOut
  class InternalError < StandardError
    def initialize(msg)
      super
    end
  end
end