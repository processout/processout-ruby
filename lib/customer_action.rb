# The content of this file was automatically generated

require "cgi"
require_relative "networking/request"
require_relative "networking/response"

module ProcessOut
    class CustomerAction
        
        attr_reader :type
        attr_reader :value

        
        def type=(val)
            @type = val
        end
        
        def value=(val)
            @value = val
        end
        

        # Initializes the CustomerAction object
        # Params:
        # +client+:: +ProcessOut+ client instance
        def initialize(client)
            @client = client

            @type = ""
            @value = ""
            
        end

        # Fills the object with data coming from the API
        # Params:
        # +data+:: +Hash+ of data coming from the API
        def fill_with_data(data)
            if data.include? "type"
                @type = data["type"]
            end
            if data.include? "value"
                @value = data["value"]
            end
            
            self
        end

        
    end
end
