module ProcessOut
  class NotFoundError < StandardError
    def initialize(msg)
      super
    end
  end
end