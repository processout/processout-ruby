# The content of this file was automatically generated

require "cgi"
require_relative "networking/request"
require_relative "networking/response"

module ProcessOut
    class Product
        
        attr_reader :id
        attr_reader :project
        attr_reader :url
        attr_reader :name
        attr_reader :amount
        attr_reader :currency
        attr_reader :metadata
        attr_reader :request_email
        attr_reader :request_shipping
        attr_reader :return_url
        attr_reader :cancel_url
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
        
        def url=(val)
            @url = val
        end
        
        def name=(val)
            @name = val
        end
        
        def amount=(val)
            @amount = val
        end
        
        def currency=(val)
            @currency = val
        end
        
        def metadata=(val)
            @metadata = val
        end
        
        def request_email=(val)
            @request_email = val
        end
        
        def request_shipping=(val)
            @request_shipping = val
        end
        
        def return_url=(val)
            @return_url = val
        end
        
        def cancel_url=(val)
            @cancel_url = val
        end
        
        def sandbox=(val)
            @sandbox = val
        end
        
        def created_at=(val)
            @created_at = val
        end
        

        # Initializes the Product object
        # Params:
        # +client+:: +ProcessOut+ client instance
        def initialize(client)
            @client = client

            @id = ""
            @project = nil
            @url = ""
            @name = ""
            @amount = ""
            @currency = ""
            @metadata = Hash.new
            @request_email = false
            @request_shipping = false
            @return_url = ""
            @cancel_url = ""
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
            if data.include? "url"
                @url = data["url"]
            end
            if data.include? "name"
                @name = data["name"]
            end
            if data.include? "amount"
                @amount = data["amount"]
            end
            if data.include? "currency"
                @currency = data["currency"]
            end
            if data.include? "metadata"
                @metadata = data["metadata"]
            end
            if data.include? "request_email"
                @request_email = data["request_email"]
            end
            if data.include? "request_shipping"
                @request_shipping = data["request_shipping"]
            end
            if data.include? "return_url"
                @return_url = data["return_url"]
            end
            if data.include? "cancel_url"
                @cancel_url = data["cancel_url"]
            end
            if data.include? "sandbox"
                @sandbox = data["sandbox"]
            end
            if data.include? "created_at"
                @created_at = data["created_at"]
            end
            
            self
        end

        # Create a new invoice from the product.
        # Params:
        # +options+:: +Hash+ of options
        def invoice(options = nil)
            request = Request.new(@client)
            path    = "/products/" + CGI.escape(@id) + "/invoices"
            data    = [
    
            ]

            response = Response.new(request.post(path, data, options))
            return_values = Array.new
            
            body = response.body
            body = body["invoice"]
            invoice = Invoice(self._client)
            return_values.push(invoice.fill_with_data(body))

            
            return_values[0]
        end
        
        # Get all the products.
        # Params:
        # +options+:: +Hash+ of options
        def all(options = nil)
            request = Request.new(@client)
            path    = "/products"
            data    = [
    
            ]

            response = Response.new(request.get(path, data, options))
            return_values = Array.new
            
            a    = Array.new
            body = response.body
            for v in body['products']
                tmp = Product(@client)
                tmp.fill_with_data(v)
                a.push(tmp)
            end

            return_values.push(a)
                

            
            return_values[0]
        end
        
        # Create a new product.
        # Params:
        # +options+:: +Hash+ of options
        def create(options = nil)
            request = Request.new(@client)
            path    = "/products"
            data    = [
                "name": @name, 
            "amount": @amount, 
            "currency": @currency, 
            "metadata": @metadata, 
            "request_email": @request_email, 
            "request_shipping": @request_shipping, 
            "return_url": @return_url, 
            "cancel_url": @cancel_url
            ]

            response = Response.new(request.post(path, data, options))
            return_values = Array.new
            
            body = response.body
            body = body["product"]
                    
                    
            return_values.push(self.fill_with_data(body))
                    

            
            return_values[0]
        end
        
        # Find a product by its ID.
        # Params:
        # +product_id+:: ID of the product
    # +options+:: +Hash+ of options
        def find(product_id, options = nil)
            request = Request.new(@client)
            path    = "/products/" + CGI.escape(product_id) + ""
            data    = [
    
            ]

            response = Response.new(request.get(path, data, options))
            return_values = Array.new
            
            body = response.body
            body = body["product"]
                    
                    
            obj = Product.new(@client)
            return_values.push(obj.fill_with_data(body))
                    

            
            return_values[0]
        end
        
        # Save the updated product attributes.
        # Params:
        # +options+:: +Hash+ of options
        def save(options = nil)
            request = Request.new(@client)
            path    = "/products/" + CGI.escape(@id) + ""
            data    = [
                "name": @name, 
            "amount": @amount, 
            "currency": @currency, 
            "metadata": @metadata, 
            "request_email": @request_email, 
            "request_shipping": @request_shipping, 
            "return_url": @return_url, 
            "cancel_url": @cancel_url
            ]

            response = Response.new(request.put(path, data, options))
            return_values = Array.new
            
            body = response.body
            body = body["product"]
                    
                    
            return_values.push(self.fill_with_data(body))
                    

            
            return_values[0]
        end
        
        # Delete the product.
        # Params:
        # +options+:: +Hash+ of options
        def delete(options = nil)
            request = Request.new(@client)
            path    = "/products/" + CGI.escape(@id) + ""
            data    = [
    
            ]

            response = Response.new(request.delete(path, data, options))
            return_values = Array.new
            
            return_values.push(response.success)

            
            return_values[0]
        end
        
        
    end
end
