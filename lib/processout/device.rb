# The content of this file was automatically generated

require "cgi"
require "json"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Device
    
    attr_reader :request_origin
    attr_reader :id
    attr_reader :channel
    attr_reader :ip_address
    attr_reader :user_agent
    attr_reader :header_accept
    attr_reader :header_referer
    attr_reader :app_color_depth
    attr_reader :app_java_enabled
    attr_reader :app_language
    attr_reader :app_screen_height
    attr_reader :app_screen_width
    attr_reader :app_timezone_offset

    
    def request_origin=(val)
      @request_origin = val
    end
    
    def id=(val)
      @id = val
    end
    
    def channel=(val)
      @channel = val
    end
    
    def ip_address=(val)
      @ip_address = val
    end
    
    def user_agent=(val)
      @user_agent = val
    end
    
    def header_accept=(val)
      @header_accept = val
    end
    
    def header_referer=(val)
      @header_referer = val
    end
    
    def app_color_depth=(val)
      @app_color_depth = val
    end
    
    def app_java_enabled=(val)
      @app_java_enabled = val
    end
    
    def app_language=(val)
      @app_language = val
    end
    
    def app_screen_height=(val)
      @app_screen_height = val
    end
    
    def app_screen_width=(val)
      @app_screen_width = val
    end
    
    def app_timezone_offset=(val)
      @app_timezone_offset = val
    end
    

    # Initializes the Device object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.request_origin = data.fetch(:request_origin, nil)
      self.id = data.fetch(:id, nil)
      self.channel = data.fetch(:channel, nil)
      self.ip_address = data.fetch(:ip_address, nil)
      self.user_agent = data.fetch(:user_agent, nil)
      self.header_accept = data.fetch(:header_accept, nil)
      self.header_referer = data.fetch(:header_referer, nil)
      self.app_color_depth = data.fetch(:app_color_depth, nil)
      self.app_java_enabled = data.fetch(:app_java_enabled, nil)
      self.app_language = data.fetch(:app_language, nil)
      self.app_screen_height = data.fetch(:app_screen_height, nil)
      self.app_screen_width = data.fetch(:app_screen_width, nil)
      self.app_timezone_offset = data.fetch(:app_timezone_offset, nil)
      
    end

    # Create a new Device using the current client
    def new(data = {})
      Device.new(@client, data)
    end

    # Overrides the JSON marshaller to only send the fields we want
    def to_json(options)
      {
          "request_origin": self.request_origin,
          "id": self.id,
          "channel": self.channel,
          "ip_address": self.ip_address,
          "user_agent": self.user_agent,
          "header_accept": self.header_accept,
          "header_referer": self.header_referer,
          "app_color_depth": self.app_color_depth,
          "app_java_enabled": self.app_java_enabled,
          "app_language": self.app_language,
          "app_screen_height": self.app_screen_height,
          "app_screen_width": self.app_screen_width,
          "app_timezone_offset": self.app_timezone_offset,
      }.to_json
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "request_origin"
        self.request_origin = data["request_origin"]
      end
      if data.include? "id"
        self.id = data["id"]
      end
      if data.include? "channel"
        self.channel = data["channel"]
      end
      if data.include? "ip_address"
        self.ip_address = data["ip_address"]
      end
      if data.include? "user_agent"
        self.user_agent = data["user_agent"]
      end
      if data.include? "header_accept"
        self.header_accept = data["header_accept"]
      end
      if data.include? "header_referer"
        self.header_referer = data["header_referer"]
      end
      if data.include? "app_color_depth"
        self.app_color_depth = data["app_color_depth"]
      end
      if data.include? "app_java_enabled"
        self.app_java_enabled = data["app_java_enabled"]
      end
      if data.include? "app_language"
        self.app_language = data["app_language"]
      end
      if data.include? "app_screen_height"
        self.app_screen_height = data["app_screen_height"]
      end
      if data.include? "app_screen_width"
        self.app_screen_width = data["app_screen_width"]
      end
      if data.include? "app_timezone_offset"
        self.app_timezone_offset = data["app_timezone_offset"]
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
      self.request_origin = data.fetch(:request_origin, self.request_origin)
      self.id = data.fetch(:id, self.id)
      self.channel = data.fetch(:channel, self.channel)
      self.ip_address = data.fetch(:ip_address, self.ip_address)
      self.user_agent = data.fetch(:user_agent, self.user_agent)
      self.header_accept = data.fetch(:header_accept, self.header_accept)
      self.header_referer = data.fetch(:header_referer, self.header_referer)
      self.app_color_depth = data.fetch(:app_color_depth, self.app_color_depth)
      self.app_java_enabled = data.fetch(:app_java_enabled, self.app_java_enabled)
      self.app_language = data.fetch(:app_language, self.app_language)
      self.app_screen_height = data.fetch(:app_screen_height, self.app_screen_height)
      self.app_screen_width = data.fetch(:app_screen_width, self.app_screen_width)
      self.app_timezone_offset = data.fetch(:app_timezone_offset, self.app_timezone_offset)
      
      self
    end

    
  end
end
