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
                  :request_path

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

    def call(method, path, params={})
      self.class.send( method, "#{@end_point}#{path}", (@default_params||{}).deep_merge(params) )
      #a.first.class.post("http://localhost:9292/api/v1/surveys/606/collectors", {:body=>{:auth_token=>"sxHNTa6w2hNxfzq7dHQo"}}).parsed_response


#      case response.code
#        when 200
#          response
#        else
#    raise response
#      end
    end

    def request_path(params={})
      base_path = @_body.match(/(?<=`).*(?=`)/).to_s.gsub(/.*\/api\/.*?\/.*?/,"/")
      @request_path = params[:parent_resource_id].present? ? base_path.gsub(/:id/, params[:parent_resource_id]) : base_path
    end

    #def request(params={})
    #  @_call ||= call(
    #    method,
    #    request_path( { parent_resource_id: params.delete(:parent_resource_id) } ),
    #    ( @default_params || {} ).deep_merge(params)
    #  )
    #end

    #def response
    #  raise ResponseEmpty if request.parsed_response.empty#?
    #  request.kind_of?(Array) ? request.parsed_response.first : request.parsed_respons#e
    #rescue ResponseEmpty => #e
    #  e.message
    #end

    def get_auth_token(email, password)
      response = call(:post, "/users/sign_in", body: { user_login: { email: email, password: password } })
      response["auth_token"]
    end
  end
end
