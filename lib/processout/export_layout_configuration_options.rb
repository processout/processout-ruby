# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class ExportLayoutConfigurationOptions
    
    attr_reader :columns
    attr_reader :time
    attr_reader :amount

    
    def columns=(val)
      @columns = val
    end
    
    def time=(val)
      if val.nil?
        @time = val
        return
      end

      if val.instance_of? ExportLayoutConfigurationConfigurationOptionsTime
        @time = val
      else
        obj = ExportLayoutConfigurationConfigurationOptionsTime.new(@client)
        obj.fill_with_data(val)
        @time = obj
      end
      
    end
    
    def amount=(val)
      if val.nil?
        @amount = val
        return
      end

      if val.instance_of? ExportLayoutConfigurationConfigurationOptionsAmount
        @amount = val
      else
        obj = ExportLayoutConfigurationConfigurationOptionsAmount.new(@client)
        obj.fill_with_data(val)
        @amount = obj
      end
      
    end
    

    # Initializes the ExportLayoutConfigurationOptions object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.columns = data.fetch(:columns, nil)
      self.time = data.fetch(:time, nil)
      self.amount = data.fetch(:amount, nil)
      
    end

    # Create a new ExportLayoutConfigurationOptions using the current client
    def new(data = {})
      ExportLayoutConfigurationOptions.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "columns": self.columns,
          "time": self.time,
          "amount": self.amount,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "columns"
        self.columns = data["columns"]
      end
      if data.include? "time"
        self.time = data["time"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
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
      self.columns = data.fetch(:columns, self.columns)
      self.time = data.fetch(:time, self.time)
      self.amount = data.fetch(:amount, self.amount)
      
      self
    end

    # Fetch export layout configuration options.
    # Params:
    # +export_type+:: Export type
    # +options+:: +Hash+ of options
    def fetch(export_type, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/exports/layouts/options/" + CGI.escape(export_type) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["export_layout_configuration_options"]
      
      
      obj = ExportLayoutConfigurationOptions.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
