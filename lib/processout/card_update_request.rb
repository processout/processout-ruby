# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class CardUpdateRequest
    
    attr_reader :update_type
    attr_reader :update_reason
    attr_reader :preferred_scheme

    
    def update_type=(val)
      @update_type = val
    end
    
    def update_reason=(val)
      @update_reason = val
    end
    
    def preferred_scheme=(val)
      @preferred_scheme = val
    end
    

    # Initializes the CardUpdateRequest object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.update_type = data.fetch(:update_type, nil)
      self.update_reason = data.fetch(:update_reason, nil)
      self.preferred_scheme = data.fetch(:preferred_scheme, nil)
      
    end

    # Create a new CardUpdateRequest using the current client
    def new(data = {})
      CardUpdateRequest.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "update_type": self.update_type,
          "update_reason": self.update_reason,
          "preferred_scheme": self.preferred_scheme,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "update_type"
        self.update_type = data["update_type"]
      end
      if data.include? "update_reason"
        self.update_reason = data["update_reason"]
      end
      if data.include? "preferred_scheme"
        self.preferred_scheme = data["preferred_scheme"]
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
      self.update_type = data.fetch(:update_type, self.update_type)
      self.update_reason = data.fetch(:update_reason, self.update_reason)
      self.preferred_scheme = data.fetch(:preferred_scheme, self.preferred_scheme)
      
      self
    end

    # Update a card by its ID.
    # Params:
    # +card_id+:: ID of the card
    # +options+:: +Hash+ of options
    def update(card_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/cards/" + CGI.escape(card_id) + ""
      data    = {

      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["card"]
      
      
      obj = CardUpdateRequest.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
