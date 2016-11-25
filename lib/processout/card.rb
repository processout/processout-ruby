# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Card
    
    attr_reader :id
    attr_reader :project
    attr_reader :scheme
    attr_reader :type
    attr_reader :bank_name
    attr_reader :brand
    attr_reader :iin
    attr_reader :last_4_digits
    attr_reader :exp_month
    attr_reader :exp_year
    attr_reader :metadata
    attr_reader :sandbox
    attr_reader :created_at

    
    def id=(val)
      @id = val
    end
    
    def project=(val)
      if val.instance_of? Project
        @project = val
      else
        obj = Project.new(@client)
        obj.fill_with_data(val)
        @project = obj
      end
      
    end
    
    def scheme=(val)
      @scheme = val
    end
    
    def type=(val)
      @type = val
    end
    
    def bank_name=(val)
      @bank_name = val
    end
    
    def brand=(val)
      @brand = val
    end
    
    def iin=(val)
      @iin = val
    end
    
    def last_4_digits=(val)
      @last_4_digits = val
    end
    
    def exp_month=(val)
      @exp_month = val
    end
    
    def exp_year=(val)
      @exp_year = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    

    # Initializes the Card object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.scheme = data.fetch(:scheme, nil)
      self.type = data.fetch(:type, nil)
      self.bank_name = data.fetch(:bank_name, nil)
      self.brand = data.fetch(:brand, nil)
      self.iin = data.fetch(:iin, nil)
      self.last_4_digits = data.fetch(:last_4_digits, nil)
      self.exp_month = data.fetch(:exp_month, nil)
      self.exp_year = data.fetch(:exp_year, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      
    end

    # Create a new Card using the current client
    def new(data = {})
      Card.new(@client, data)
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
      if data.include? "project"
        self.project = data["project"]
      end
      if data.include? "scheme"
        self.scheme = data["scheme"]
      end
      if data.include? "type"
        self.type = data["type"]
      end
      if data.include? "bank_name"
        self.bank_name = data["bank_name"]
      end
      if data.include? "brand"
        self.brand = data["brand"]
      end
      if data.include? "iin"
        self.iin = data["iin"]
      end
      if data.include? "last_4_digits"
        self.last_4_digits = data["last_4_digits"]
      end
      if data.include? "exp_month"
        self.exp_month = data["exp_month"]
      end
      if data.include? "exp_year"
        self.exp_year = data["exp_year"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      
      self
    end

    # Prefills the object with the data passed as Parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.id = data.fetch(:id, self.id)
      self.project = data.fetch(:project, self.project)
      self.scheme = data.fetch(:scheme, self.scheme)
      self.type = data.fetch(:type, self.type)
      self.bank_name = data.fetch(:bank_name, self.bank_name)
      self.brand = data.fetch(:brand, self.brand)
      self.iin = data.fetch(:iin, self.iin)
      self.last_4_digits = data.fetch(:last_4_digits, self.last_4_digits)
      self.exp_month = data.fetch(:exp_month, self.exp_month)
      self.exp_year = data.fetch(:exp_year, self.exp_year)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      
      self
    end

    
  end
end
