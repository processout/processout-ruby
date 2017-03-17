# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoiceDetail
    
    attr_reader :name
    attr_reader :type
    attr_reader :amount
    attr_reader :quantity
    attr_reader :metadata

    
    def name=(val)
      @name = val
    end
    
    def type=(val)
      @type = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def quantity=(val)
      @quantity = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    

    # Initializes the InvoiceDetail object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.name = data.fetch(:name, nil)
      self.type = data.fetch(:type, nil)
      self.amount = data.fetch(:amount, nil)
      self.quantity = data.fetch(:quantity, nil)
      self.metadata = data.fetch(:metadata, nil)
      
    end

    # Create a new InvoiceDetail using the current client
    def new(data = {})
      InvoiceDetail.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "quantity"
        self.quantity = data["quantity"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
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
      self.name = data.fetch(:name, self.name)
      self.type = data.fetch(:type, self.type)
      self.amount = data.fetch(:amount, self.amount)
      self.quantity = data.fetch(:quantity, self.quantity)
      self.metadata = data.fetch(:metadata, self.metadata)
      
      self
    end

    
  end
end
