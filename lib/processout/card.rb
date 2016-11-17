# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Card
    
    attr_reader :id
    attr_reader :project
    attr_reader :brand
    attr_reader :type
    attr_reader :bank_name
    attr_reader :level
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
    
    def brand=(val)
      @brand = val
    end
    
    def type=(val)
      @type = val
    end
    
    def bank_name=(val)
      @bank_name = val
    end
    
    def level=(val)
      @level = val
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

      @id = data.fetch(:id, "")
      @project = data.fetch(:project, nil)
      @brand = data.fetch(:brand, "")
      @type = data.fetch(:type, "")
      @bank_name = data.fetch(:bank_name, "")
      @level = data.fetch(:level, "")
      @iin = data.fetch(:iin, "")
      @last_4_digits = data.fetch(:last_4_digits, "")
      @exp_month = data.fetch(:exp_month, 0)
      @exp_year = data.fetch(:exp_year, 0)
      @metadata = data.fetch(:metadata, Hash.new)
      @sandbox = data.fetch(:sandbox, false)
      @created_at = data.fetch(:created_at, "")
      
    end

    # Create a new Card using the current client
    def new(data = {})
      Card.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        @id = data["id"]
      end
      if data.include? "project"
        @project = data["project"]
      end
      if data.include? "brand"
        @brand = data["brand"]
      end
      if data.include? "type"
        @type = data["type"]
      end
      if data.include? "bank_name"
        @bank_name = data["bank_name"]
      end
      if data.include? "level"
        @level = data["level"]
      end
      if data.include? "iin"
        @iin = data["iin"]
      end
      if data.include? "last_4_digits"
        @last_4_digits = data["last_4_digits"]
      end
      if data.include? "exp_month"
        @exp_month = data["exp_month"]
      end
      if data.include? "exp_year"
        @exp_year = data["exp_year"]
      end
      if data.include? "metadata"
        @metadata = data["metadata"]
      end
      if data.include? "sandbox"
        @sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        @created_at = data["created_at"]
      end
      
      self
    end

    
  end
end
