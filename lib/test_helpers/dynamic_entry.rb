# encoding: utf-8

require "httparty"
require "preamble"

module TestHelpers
  class DynamicEntry < Entry
    include HTTParty

    attr_accessor :auth_token,
                  :default_params,
                  :end_point,
                  :md_response,
                  :curl_response

    def self.api_version
      "V1"
    end

    def self.end_point
      "http://creativesurvey.com/api/#{self.api_version}"
    end

    def initialize(file, default_params={})
      @end_point       = default_params.delete(:end_point) || self.class.end_point
      @email           = default_params.delete(:email)     || ENV["CS_USER"]
      @password        = default_params.delete(:password)  || ENV["CS_PASSWORD"]
      @auth_token      = self.get_auth_token(@email, @password)
      @default_params  = default_params
      @default_params  = @default_params.deep_merge( body: { :auth_token => @auth_token } )
      super
    end

    def call(method, action, params={})
      response = self.class.send( method, "#{@end_point}#{action}", (@default_params||{}).deep_merge(params) )

      case response.code
        when 200
          response
        else
          raise response.message
      end
    end

    def request
      call(method, request_path.gsub(/:id/, "1906"), default_params)
    end

    def response
      request.parsed_response
    end

    def get_auth_token(email, password)
      response = call(:post, "/users/sign_in", body: {user_login: { email: email, password: password } })
      response["auth_token"]
    end
  end
end
