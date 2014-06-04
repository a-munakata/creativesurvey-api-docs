# encoding: utf-8

require "httparty"
require "preamble"

module TestHelpers
  class DynamicEntry < Entry
    include HTTParty

    class ResponseEmpty < Exception; end
    class RequestEmpty < Exception; end

    attr_accessor :auth_token,
                  :default_params,
                  :end_point,
                  :request_path,
                  :required_id

    def self.api_version
      "V1"
    end

    def self.end_point
      "http://creativesurvey.com/api/#{self.api_version}"
    end

    def initialize(file, default_params={})
      super
      @end_point       = default_params.delete(:end_point) || self.class.end_point
      @email           = default_params.delete(:email)     || ENV["CS_USER"]
      @password        = default_params.delete(:password)  || ENV["CS_PASSWORD"]
      @required_id     = default_params.delete(:required_id)
      @auth_token      = self.get_auth_token(@email, @password)
      @default_params  = default_params
      @default_params.deep_merge!( body: { :auth_token => @auth_token } )

      set_params
    end

    def set_params
      if required_params?("name")
        @default_params.deep_merge!({ body: { resource_name => { name: "new_#{resource_name.to_sym}" }} })
      elsif required_params?("step_num")
        @default_params.deep_merge!({ body: { resource_name => { step_num: 5 }} }
        )
      end
    end

    def call(method=self.method, path=self.request_path, params=@default_params)
      self.class.send( method, "#{@end_point}#{path}", (@default_params||{}).deep_merge(params) )
    end

    def request_path(params={})
      base_path     = @_body.match(/(?<=`).*(?=`)/).to_s.gsub(/.*\/api\/.*?\/.*?/,"/")
      required_id   = @required_id

      @request_path = required_id.present? ? base_path.gsub(/:id/, required_id ) : base_path
    end

    def get_auth_token(email, password)
      response = call(:post, "/users/sign_in", body: { user_login: { email: email, password: password } })
      response["auth_token"]
    end

    def required_params?(param)
      @_body.present? && @_body.scan(/.*必須.*/).any?{|w| w.match(param) }
    end
  end
end
