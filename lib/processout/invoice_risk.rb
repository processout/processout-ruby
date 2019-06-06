# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoiceRisk
    
    attr_reader :score
    attr_reader :is_legit

    
    def score=(val)
      @score = val
    end
    
    def is_legit=(val)
      @is_legit = val
    end
    

    # Initializes the InvoiceRisk object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.score = data.fetch(:score, nil)
      self.is_legit = data.fetch(:is_legit, nil)
      
    end

    # Create a new InvoiceRisk using the current client
    def new(data = {})
      InvoiceRisk.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "score"
        self.score = data["score"]
      end
      if data.include? "is_legit"
        self.is_legit = data["is_legit"]
      end
      
      self
    end

    # Prefills the object with the data passed as parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.score = data.fetch(:score, self.score)
      self.is_legit = data.fetch(:is_legit, self.is_legit)
      
      self
    end

    
  end
end
