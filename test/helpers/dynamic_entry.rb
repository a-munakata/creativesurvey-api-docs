# encoding: utf-8

require "httparty"
require "preamble"
require 'test/helpers/entries_wrapper'

module TestHelpers
  class DynamicEntry < Entry
    include HTTParty

    class ResponseEmpty < Exception; end
    class RequestEmpty < Exception; end
    class UnCreatableResourceError < Exception; end
    class NoParentIdGivenError < Exception; end

    attr_accessor :auth_token,
                  :default_params,
                  :joined_params,
                  :end_point,
                  :request_path,
                  :required_id,
                  :additional_params,
                  :candidate_parent_id

    def self.api_version
      "V1"
    end

    def self.end_point
      #"http://creativesurvey.com/api/#{self.api_version}"
      "http://localhost:9292/api/#{self.api_version}"
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
        @default_params.deep_merge!({ body: { resource_name => { step_num: 1 }} }
        )
      end

      @joined_params = @default_params[:body].collect{ |k,v| v.kind_of?(Hash) ? v.collect{|kk, vv| "#{k}[#{kk}]=#{vv}"  } : "#{k}=#{v}"  }.join("&")
    end

    def call(method=self.method, path=self.request_path, params=@default_params)
      self.class.send( method, "#{@end_point}#{path}", (@default_params||{}).deep_merge(params) )
    end

    def parent
      return if parent_resource_name.nil?

      parent_file = Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).find{ |file|
        reg = "#{parent_resource_name.to_s}_#{action.to_s}"
        file.match(reg)
      }

      return if parent_file.nil?
      parent_entry            = DynamicEntry.new(parent_file)
      parent_entry.auth_token = get_auth_token(@email, @password)
      parent_entry.required_id= parent_entry.candidate_parent_id if parent_entry.candidate_parent_id.present?
      parent_entry.joined_params   = set_params
      parent_entry.try(:resource_name) == parent_resource_name ? parent_entry : nil
    end

    def family_tree
      tree     = []
      target ||= parent

      while target.present?
        return [] if resource_name == parent_resource_name
        puts "#{target.resource_name}......................"
        tree << target
        target = target.parent
      end
      tree
    end

    def create_ancestors
      new_resources = []
      tree          = family_tree

      while tree.length > 0
        current_generation = tree.pop

        if current_generation.candidate_parent_id.present?
          current_generation.required_id = current_generation.candidate_parent_id.to_s
        else
          raise NoParentIdGivenError, "親リソースのidがありません : #{current_generation.resource_name}" unless instance_variable_get("@#{parent_resource_name.to_s}").present?
          current_generation.required_id = instance_variable_get("@#{parent_resource_name.to_s}").to_s
        end

        new_resource = current_generation.call
        instance_variable_set("@#{current_generation.resource_name.to_s}", new_resource["id"].to_s)

        new_resources << new_resource
      end

      puts "#{family_tree.collect{|e| e.resource_name }.join(",") } has created."
      new_resources
    end

    #def create
    #  raise UnCreatableResourceError, "このエントリは作成出来ません。" if method != :post
    #  call
    #end

    def request_path(params={})
      base_path     = @_body.match(/(?<=`).*(?=`)/).to_s.gsub(/.*\/api\/.*?\/.*?/,"/")
      @required_id  = @candidate_parent_id if @required_id.nil?
      @request_path = @required_id.present? ? base_path.gsub(/:id/, @required_id.to_s ) : base_path
    end

    def get_auth_token(email, password)
      response = call(:post, "/users/sign_in", body: { user_login: { email: email, password: password } })
      response["auth_token"]
    end

    def required_params?(param)
      @_body.present? && @_body.scan(/.*必須.*/).any?{|w| w.match(param) }
    end

    def is_questionnaire?
      action == "index" && resource_name == :questionnaire
    end

    def is_survey?
      resource_name == :survey
    end

    def candidate_parent_id
      # CREATEできないリソースのidを確保するためのものです。
      # TODO: environmentによって値が変更されなければならない / リソースが削除されてはならない

      id_set = {
        panel: 3810,
        font: 1,
        design: 1,
        questionnaire: 1,
        page_order_item: 13
      }

      @candidate_parent_id = id_set[parent_resource_name]
    end
  end
end
