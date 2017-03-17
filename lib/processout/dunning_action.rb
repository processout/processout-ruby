# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class DunningAction
    
    attr_reader :action
    attr_reader :delay_in_days

    
    def action=(val)
      @action = val
    end
    
    def delay_in_days=(val)
      @delay_in_days = val
    end
    

    # Initializes the DunningAction object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.action = data.fetch(:action, nil)
      self.delay_in_days = data.fetch(:delay_in_days, nil)
      
    end

    # Create a new DunningAction using the current client
    def new(data = {})
      DunningAction.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "action"
        self.action = data["action"]
      end
      if data.include? "delay_in_days"
        self.delay_in_days = data["delay_in_days"]
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
      self.action = data.fetch(:action, self.action)
      self.delay_in_days = data.fetch(:delay_in_days, self.delay_in_days)
      
      self
    end

    
  end
end
