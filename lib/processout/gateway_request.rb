require "base64"
require "json"

module ProcessOut
  class GatewayRequest
    attr_accessor :gateway_configuration_id, :method, :url, :headers, :body

    def initialize(gateway_configuration_id, data = {})
      self.gateway_configuration_id = gateway_configuration_id
      self.method = data.fetch(:method, nil)
      self.url = data.fetch(:url, nil)
      self.headers = data.fetch(:headers, {})
      self.body = data.fetch(:body, nil)
    end

    def to_s
      "gway_req_" + Base64.strict_encode64(JSON.generate({
        gateway_configuration_id: self.gateway_configuration_id,
        method: self.method,
        url: self.url,
        headers: self.headers,
        body: self.body
      }))
    end
  end
end