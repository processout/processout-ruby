# The content of this file was automatically generated

require "cgi"
require_relative "networking/request"
require_relative "networking/response"

module ProcessOut
    class Project
        
        attr_reader :id
        attr_reader :name
        attr_reader :logo_url
        attr_reader :email
        attr_reader :created_at

        
        def id=(val)
            @id = val
        end
        
        def name=(val)
            @name = val
        end
        
        def logo_url=(val)
            @logo_url = val
        end
        
        def email=(val)
            @email = val
        end
        
        def created_at=(val)
            @created_at = val
        end
        

        # Initializes the Project object
        # Params:
        # +client+:: +ProcessOut+ client instance
        def initialize(client)
            @client = client

            @id = ""
            @name = ""
            @logo_url = ""
            @email = ""
            @created_at = ""
            
        end

        # Fills the object with data coming from the API
        # Params:
        # +data+:: +Hash+ of data coming from the API
        def fill_with_data(data)
            if data.include? "id"
                @id = data["id"]
            end
            if data.include? "name"
                @name = data["name"]
            end
            if data.include? "logo_url"
                @logo_url = data["logo_url"]
            end
            if data.include? "email"
                @email = data["email"]
            end
            if data.include? "created_at"
                @created_at = data["created_at"]
            end
            
            self
        end

        # Get all the gateway configurations of the project
        # Params:
        # +options+:: +Hash+ of options
        def gateway_configurations(options = nil)
            request = Request.new(@client)
            path    = "/projects/" + CGI.escape(@id) + "/gateway-configurations"
            data    = [
    
            ]

            response = Response.new(request.get(path, data, options))
            return_values = Array.new
            
            a    = Array.new
            body = response.body
            for v in body['gateway_configurations']
                tmp = GatewayConfiguration(@client)
                tmp.fill_with_data(v)
                a.push(tmp)
            end

            return_values.push(a)
                

            
            return_values[0]
        end
        
        
    end
end
