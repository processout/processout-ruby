# The content of this file was automatically generated

require "cgi"
require_relative "networking/request"
require_relative "networking/response"

module ProcessOut
    class Coupon
        
        attr_reader :id
        attr_reader :project
        attr_reader :name
        attr_reader :amount_off
        attr_reader :percent_off
        attr_reader :currency
        attr_reader :max_redemptions
        attr_reader :expires_at
        attr_reader :metadata
        attr_reader :iteration_count
        attr_reader :redeemed_number
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
        
        def name=(val)
            @name = val
        end
        
        def amount_off=(val)
            @amount_off = val
        end
        
        def percent_off=(val)
            @percent_off = val
        end
        
        def currency=(val)
            @currency = val
        end
        
        def max_redemptions=(val)
            @max_redemptions = val
        end
        
        def expires_at=(val)
            @expires_at = val
        end
        
        def metadata=(val)
            @metadata = val
        end
        
        def iteration_count=(val)
            @iteration_count = val
        end
        
        def redeemed_number=(val)
            @redeemed_number = val
        end
        
        def sandbox=(val)
            @sandbox = val
        end
        
        def created_at=(val)
            @created_at = val
        end
        

        # Initializes the Coupon object
        # Params:
        # +client+:: +ProcessOut+ client instance
        def initialize(client)
            @client = client

            @id = ""
            @project = nil
            @name = ""
            @amount_off = ""
            @percent_off = 0
            @currency = ""
            @max_redemptions = 0
            @expires_at = ""
            @metadata = Hash.new
            @iteration_count = 0
            @redeemed_number = 0
            @sandbox = false
            @created_at = ""
            
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
            if data.include? "name"
                @name = data["name"]
            end
            if data.include? "amount_off"
                @amount_off = data["amount_off"]
            end
            if data.include? "percent_off"
                @percent_off = data["percent_off"]
            end
            if data.include? "currency"
                @currency = data["currency"]
            end
            if data.include? "max_redemptions"
                @max_redemptions = data["max_redemptions"]
            end
            if data.include? "expires_at"
                @expires_at = data["expires_at"]
            end
            if data.include? "metadata"
                @metadata = data["metadata"]
            end
            if data.include? "iteration_count"
                @iteration_count = data["iteration_count"]
            end
            if data.include? "redeemed_number"
                @redeemed_number = data["redeemed_number"]
            end
            if data.include? "sandbox"
                @sandbox = data["sandbox"]
            end
            if data.include? "created_at"
                @created_at = data["created_at"]
            end
            
            self
        end

        # Get all the coupons.
        # Params:
        # +options+:: +Hash+ of options
        def all(options = nil)
            request = Request.new(@client)
            path    = "/coupons"
            data    = [
    
            ]

            response = Response.new(request.get(path, data, options))
            return_values = Array.new
            
            a    = Array.new
            body = response.body
            for v in body['coupons']
                tmp = Coupon(@client)
                tmp.fill_with_data(v)
                a.push(tmp)
            end

            return_values.push(a)
                

            
            return_values[0]
        end
        
        # Create a new coupon.
        # Params:
        # +options+:: +Hash+ of options
        def create(options = nil)
            request = Request.new(@client)
            path    = "/coupons"
            data    = [
                "id": @id, 
            "amount_off": @amount_off, 
            "percent_off": @percent_off, 
            "currency": @currency, 
            "iteration_count": @iteration_count, 
            "max_redemptions": @max_redemptions, 
            "expires_at": @expires_at, 
            "metadata": @metadata
            ]

            response = Response.new(request.post(path, data, options))
            return_values = Array.new
            
            body = response.body
            body = body["coupon"]
                    
                    
            return_values.push(self.fill_with_data(body))
                    

            
            return_values[0]
        end
        
        # Find a coupon by its ID.
        # Params:
        # +coupon_id+:: ID of the coupon
    # +options+:: +Hash+ of options
        def find(coupon_id, options = nil)
            request = Request.new(@client)
            path    = "/coupons/" + CGI.escape(coupon_id) + ""
            data    = [
    
            ]

            response = Response.new(request.get(path, data, options))
            return_values = Array.new
            
            body = response.body
            body = body["coupon"]
                    
                    
            obj = Coupon.new(@client)
            return_values.push(obj.fill_with_data(body))
                    

            
            return_values[0]
        end
        
        # Save the updated coupon attributes.
        # Params:
        # +options+:: +Hash+ of options
        def save(options = nil)
            request = Request.new(@client)
            path    = "/coupons/" + CGI.escape(@id) + ""
            data    = [
                "metadata": @metadata
            ]

            response = Response.new(request.put(path, data, options))
            return_values = Array.new
            
            body = response.body
            body = body["coupon"]
                    
                    
            return_values.push(self.fill_with_data(body))
                    

            
            return_values[0]
        end
        
        # Delete the coupon.
        # Params:
        # +options+:: +Hash+ of options
        def delete(options = nil)
            request = Request.new(@client)
            path    = "/coupons/" + CGI.escape(@id) + ""
            data    = [
    
            ]

            response = Response.new(request.delete(path, data, options))
            return_values = Array.new
            
            return_values.push(response.success)

            
            return_values[0]
        end
        
        
    end
end
