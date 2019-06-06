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
    attr_reader :reference
    attr_reader :description
    attr_reader :brand
    attr_reader :model
    attr_reader :discount_amount
    attr_reader :condition
    attr_reader :marketplace_merchant
    attr_reader :marketplace_merchant_is_business
    attr_reader :marketplace_merchant_created_at
    attr_reader :category

    
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
    
    def reference=(val)
      @reference = val
    end
    
    def description=(val)
      @description = val
    end
    
    def brand=(val)
      @brand = val
    end
    
    def model=(val)
      @model = val
    end
    
    def discount_amount=(val)
      @discount_amount = val
    end
    
    def condition=(val)
      @condition = val
    end
    
    def marketplace_merchant=(val)
      @marketplace_merchant = val
    end
    
    def marketplace_merchant_is_business=(val)
      @marketplace_merchant_is_business = val
    end
    
    def marketplace_merchant_created_at=(val)
      @marketplace_merchant_created_at = val
    end
    
    def category=(val)
      @category = val
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
      self.reference = data.fetch(:reference, nil)
      self.description = data.fetch(:description, nil)
      self.brand = data.fetch(:brand, nil)
      self.model = data.fetch(:model, nil)
      self.discount_amount = data.fetch(:discount_amount, nil)
      self.condition = data.fetch(:condition, nil)
      self.marketplace_merchant = data.fetch(:marketplace_merchant, nil)
      self.marketplace_merchant_is_business = data.fetch(:marketplace_merchant_is_business, nil)
      self.marketplace_merchant_created_at = data.fetch(:marketplace_merchant_created_at, nil)
      self.category = data.fetch(:category, nil)
      
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
      if data.include? "reference"
        self.reference = data["reference"]
      end
      if data.include? "description"
        self.description = data["description"]
      end
      if data.include? "brand"
        self.brand = data["brand"]
      end
      if data.include? "model"
        self.model = data["model"]
      end
      if data.include? "discount_amount"
        self.discount_amount = data["discount_amount"]
      end
      if data.include? "condition"
        self.condition = data["condition"]
      end
      if data.include? "marketplace_merchant"
        self.marketplace_merchant = data["marketplace_merchant"]
      end
      if data.include? "marketplace_merchant_is_business"
        self.marketplace_merchant_is_business = data["marketplace_merchant_is_business"]
      end
      if data.include? "marketplace_merchant_created_at"
        self.marketplace_merchant_created_at = data["marketplace_merchant_created_at"]
      end
      if data.include? "category"
        self.category = data["category"]
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
      self.reference = data.fetch(:reference, self.reference)
      self.description = data.fetch(:description, self.description)
      self.brand = data.fetch(:brand, self.brand)
      self.model = data.fetch(:model, self.model)
      self.discount_amount = data.fetch(:discount_amount, self.discount_amount)
      self.condition = data.fetch(:condition, self.condition)
      self.marketplace_merchant = data.fetch(:marketplace_merchant, self.marketplace_merchant)
      self.marketplace_merchant_is_business = data.fetch(:marketplace_merchant_is_business, self.marketplace_merchant_is_business)
      self.marketplace_merchant_created_at = data.fetch(:marketplace_merchant_created_at, self.marketplace_merchant_created_at)
      self.category = data.fetch(:category, self.category)
      
      self
    end

    
  end
end
