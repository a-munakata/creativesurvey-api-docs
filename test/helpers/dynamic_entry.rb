# encoding: utf-8

require "httparty"
require "preamble"
require 'test/helpers/entries_wrapper'

module TestHelpers
  class DynamicEntry < Entry
    include HTTParty

    class UnCreatableResourceError < Exception; end
    class NoParentIdGivenError     < Exception; end

    attr_accessor :auth_token,
                  :default_params,
                  :joined_params,
                  :end_point,
                  :request_path,
                  :required_id,
                  :additional_params,
                  :candidate_parent_id,
                  :parent_id,
                  :tmp_id,
                  :created_resources

    def self.api_version
      "v1"
    end

    def self.end_point
      "http://localhost:9292/api/#{self.api_version}"
    end

    def initialize(file, default_params={})
      super
      @end_point       = default_params.delete(:end_point) || self.class.end_point
      @email           = default_params.delete(:email)     || ENV["CS_USER"]
      @password        = default_params.delete(:password)  || ENV["CS_PASSWORD"]
      @required_id     = default_params.delete(:required_id)
      @auth_token      = get_auth_token(@email, @password)
      @default_params  = default_params
      @default_params.deep_merge!( body: { :auth_token =>  @auth_token } )

      set_params
    end

    def call(method=self.method, path=self.request_path, params=@default_params)
      if resource_name == :randomizer && method == :put
        reset_resource("randomizer")
      end
      self.class.send( method, "#{@end_point}#{path}", (@default_params||{}).deep_merge(params) )
    end

    def parent
      return if parent_resource_name.nil?

      parent_file = Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).find{ |file|
        reg = "#{parent_resource_name.to_s}_index"
        file.match(reg)
      }

      return if parent_file.nil?
      parent_entry = DynamicEntry.new(parent_file)
      parent_entry.try(:resource_name) == parent_resource_name ? parent_entry : nil
    end

    def family_tree
      tree     = []
      target ||= parent

      while target.present?
        return [] if resource_name == parent_resource_name
        tree << target
        target = target.parent
      end
      tree
    end

    def create_ancestors
      @created_resources ||= {}
      tree   = family_tree

      while tree.length > 0
        resource = tree.pop
        @tmp_id = create_survey["id"] if resource.parent_resource_name == :survey
        @tmp_id = safe_id_set[resource.parent_resource_name] if resource.safe_id_set.include? resource.parent_resource_name

        if safe_id_set.keys.include? resource.resource_name
          @tmp_id = safe_id_set[resource.resource_name]
        else
          created_resource = resource.send("create_" + "#{resource.resource_name}", @tmp_id.to_s)
          @tmp_id = created_resource["id"]
        end

        @parent_id = @tmp_id

        @created_resources.merge!({ resource.resource_name => @tmp_id })
      end

      puts "created #{@created_resources}" if @created_resources.present?
      @parent_id = safe_id_set[parent_resource_name] if safe_id_set.include? parent_resource_name
      create_self
      @parent_id
    end

    def create_self
      if resource_name == parent_resource_name
        @tmp_id = send("create_" + "#{resource_name}", @tmp_id.to_s)["id"] if candidate_parent_id.nil?
        @tmp_id = candidate_parent_id if candidate_parent_id.present?
        return @parent_id = @tmp_id
      end
    end

    Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).select{|file|
      !File.basename(file).match(/user|overview|error_example/) && File.basename(file).match(/create/)
    }.collect{|file| Entry.new(file).resource_name.to_s }.each do |resource_name|
      class_eval <<-EOF
        def create_#{resource_name}(required_id=nil)
          dynamic_entry = TestHelpers::DynamicEntry.new(Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).select { |file|
            File.basename(file).match(/create/)
          }.collect{|file| Entry.new(file) }.find{|a| a.resource_name == "#{resource_name}".to_sym}.file_name)

          dynamic_entry.required_id = required_id
          dynamic_entry.call
        end
      EOF
    end

    def request_path(params={})
      create_ancestors
      base_path     = @_body.match(/(?<=`).*(?=`)/).to_s.gsub(/.*\/api\/.*?\/.*?/,"/")
      @required_id  = candidate_parent_id  if @required_id.nil?
      @required_id  = @parent_id           if @parent_id.present? && !is_creative_chain?
      @request_path = @required_id.present? ? base_path.gsub(/:id/, @required_id.to_s ) : base_path
    end

    def candidate_parent_id
      resource = (is_creative_chain? ? resource_name : parent_resource_name)
      @candidate_parent_id ||= safe_id_set[resource]
    end

    def is_creative_chain?
      method == :put && resource_name == :creative_chain
    end

    def safe_id_set
      # CREATEできないリソースのidを確保するためのものです。
      # TODO: environmentによって値が変更されなければならない / リソースが削除されてはならない

      {
        panel: 3810,
        font: 1,
        design: 1,
        questionnaire: 1,
        page_order_item: 13,
        egression: 1,
        creative_chain: 9650
      }
    end

    def reset_resource(resource)
      entry = TestHelpers::DynamicEntry.new(File.join(Rails.root, "/seeds/entries/#{resource.pluralize}", "#{resource}_index.md"))
      @ids = entry.class.
        send( entry.method, "#{entry.end_point}#{entry.request_path}", (entry.default_params||{}) ).
        parsed_response.
        collect{|obj| obj["id"] }
      @ids.delete(required_id)
      @ids.each{ |id| call(:delete, "/#{resource.pluralize}/#{id}") }
    end

    def avoid_randomizer_error
      resource = "question"
      2.times {create_question}
      entry = TestHelpers::DynamicEntry.new(File.join(Rails.root, "/seeds/entries/#{resource.pluralize}", "#{resource}_index.md"))

      @questions_count = entry.class.
        send( entry.method, "#{entry.end_point}/questionnaires/1/#{resource.pluralize}", (entry.default_params||{}) ).
        parsed_response.
        count
    end

    private

    def set_params
      @default_params ||= { body: {}}
      if required_params?("name")
        @default_params.deep_merge!({ body: { resource_name => {
          name: "new_#{resource_name.to_sym}"
        }} })
      elsif required_params?("step_num")
        @questions_count = 1   if method != :put
        avoid_randomizer_error if method == :put

        @default_params.deep_merge!({ body: { resource_name => {
          step_num: 1,
          start_index: @questions_count - 1,
          end_index: @questions_count
        }} })
      end

      @joined_params = @default_params[:body].collect{ |k,v|
        v.kind_of?(Hash) ? v.collect{|kk, vv| "#{k}[#{kk}]=#{vv}"  } : "#{k}=#{v}"
      }.join("&")
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
