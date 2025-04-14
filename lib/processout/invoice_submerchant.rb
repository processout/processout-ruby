# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class InvoiceSubmerchant
    
    attr_reader :id
    attr_reader :name
    attr_reader :reference
    attr_reader :mcc
    attr_reader :phone_number
    attr_reader :email
    attr_reader :address
    attr_reader :tax_reference
    attr_reader :service_establishment_number

    
    def id=(val)
      @id = val
    end
    
    def name=(val)
      @name = val
    end
    
    def reference=(val)
      @reference = val
    end
    
    def mcc=(val)
      @mcc = val
    end
    
    def phone_number=(val)
      if val.nil?
        @phone_number = val
        return
      end

      if val.instance_of? SubmerchantPhoneNumber
        @phone_number = val
      else
        obj = SubmerchantPhoneNumber.new(@client)
        obj.fill_with_data(val)
        @phone_number = obj
      end
      
    end
    
    def email=(val)
      @email = val
    end
    
    def address=(val)
      if val.nil?
        @address = val
        return
      end

      if val.instance_of? SubmerchantAddress
        @address = val
      else
        obj = SubmerchantAddress.new(@client)
        obj.fill_with_data(val)
        @address = obj
      end
      
    end
    
    def tax_reference=(val)
      @tax_reference = val
    end
    
    def service_establishment_number=(val)
      @service_establishment_number = val
    end
    

    # Initializes the InvoiceSubmerchant object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.name = data.fetch(:name, nil)
      self.reference = data.fetch(:reference, nil)
      self.mcc = data.fetch(:mcc, nil)
      self.phone_number = data.fetch(:phone_number, nil)
      self.email = data.fetch(:email, nil)
      self.address = data.fetch(:address, nil)
      self.tax_reference = data.fetch(:tax_reference, nil)
      self.service_establishment_number = data.fetch(:service_establishment_number, nil)
      
    end

    # Create a new InvoiceSubmerchant using the current client
    def new(data = {})
      InvoiceSubmerchant.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "id": self.id,
          "name": self.name,
          "reference": self.reference,
          "mcc": self.mcc,
          "phone_number": self.phone_number,
          "email": self.email,
          "address": self.address,
          "tax_reference": self.tax_reference,
          "service_establishment_number": self.service_establishment_number,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "id"
        self.id = data["id"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "reference"
        self.reference = data["reference"]
      end
      if data.include? "mcc"
        self.mcc = data["mcc"]
      end
      if data.include? "phone_number"
        self.phone_number = data["phone_number"]
      end
      if data.include? "email"
        self.email = data["email"]
      end
      if data.include? "address"
        self.address = data["address"]
      end
      if data.include? "tax_reference"
        self.tax_reference = data["tax_reference"]
      end
      if data.include? "service_establishment_number"
        self.service_establishment_number = data["service_establishment_number"]
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
      self.id = data.fetch(:id, self.id)
      self.name = data.fetch(:name, self.name)
      self.reference = data.fetch(:reference, self.reference)
      self.mcc = data.fetch(:mcc, self.mcc)
      self.phone_number = data.fetch(:phone_number, self.phone_number)
      self.email = data.fetch(:email, self.email)
      self.address = data.fetch(:address, self.address)
      self.tax_reference = data.fetch(:tax_reference, self.tax_reference)
      self.service_establishment_number = data.fetch(:service_establishment_number, self.service_establishment_number)
      
      self
    end

    
  end
end
