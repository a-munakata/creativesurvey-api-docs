# encoding: utf-8

require "tests/md_entry"

module TestHelpers
  class MdTester

    END_POINT = ""

    attr_accessor :email,
                  :password,
                  :endpoint

    def self.api_version
      "V1"
    end

    def self.end_point
      "https://creativesurvey.com/api/#{self.api_version}"
    end

    def initialize(email, password, default_params={})
      @end_point       = default_params.delete(:end_point) || self.class.end_point
      @default_params  = default_params
      @auth_token      = self.get_auth_token(email, password)
      @default_params  = @default_params.deep_merge( body: { :auth_token => @auth_token} )
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

    def get_auth_token(email, password)
      response = call(:post, "/users/sign_in", body: {user_login: { email: email, password: password } })
      response["auth_token"]
    end

    #def retrieve(target = nil)
    #  target_dir = target.nil? ? "**" : target
    #
    #  @retrieve_result ||= Dir.glob(File.join(Rails.root, "seeds/entries/#{target_dir}/*.md")).collect { |file|
    #    @doc_entry = CSDoc::MdEntry.new(file, {
    #      auth_token: @auth_token,
    #      email:      @email,
    #      password:   @password,
    #      endpoint:   @endpoint }
    #    )
    #  }
    #end
  end
end