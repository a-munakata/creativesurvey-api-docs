# encoding: utf-8

require "test_helpers/dynamic_entry"

module TestHelpers
  class MdTester
    attr_accessor :end_point,
                  :entries,
                  :safe_resources

    def initialize(end_point=nil)
      @end_point         ||= (end_point || "http://localhost:9292/api/v1")
      @entries           = retrieve
      @creatable_entries = @entries.select{|a| a.action == "create" }
      @safe_resources    = {}

      self.create_survey
      self.create_questionnaire
    end

    def retrieve(target=nil)
      puts "started retrieving data..."
      target_dir = target.nil? ? "**" : target

      @retrieve_result ||= Dir.glob(File.join(Rails.root, "seeds/entries/#{target_dir}/*.md")).collect { |file|
        @entry = TestHelpers::DynamicEntry.new(
          file, { email: ENV["CS_USER"], password: ENV["CS_PASSWORD"], end_point: @end_point }
        )
      }.sort  { |a, b| a.parent_klass_order_index <=> b.parent_klass_order_index
      }.sort  { |a, b| a.order_index <=> b.order_index
      }.select{ |a|
        !%w(user overview error_example).include? a.resource_name.to_s
      }
    end

    def setup_resources
      puts "started setup resources..."
      @tmp_result = {}
      @creatable_entries.each{ |e|
        @tmp_result[e.parent_resource_name || "surveys"] ||= []
        @tmp_result[e.parent_resource_name || "surveys"] << e
      }

      while @tmp_result.length > 0
        tmp_resources = {}
        @safe_resources.each do |safe_resource, safe_id|

          @tmp_result[safe_resource.to_s.pluralize].present? && @tmp_result[safe_resource.to_s.pluralize].each do |entry|
            response = entry.call( entry.method, entry.request_path(parent_resource_id: safe_id.to_s), entry.default_params )
            instance_variable_set "@#{entry.resource_name.to_s}_id", response["id"].present? ? response["id"] : response.parsed_response

            tmp_resources[entry.resource_name] = instance_variable_get("@#{entry.resource_name.to_s}_id".to_sym)

          end

          @tmp_result.delete(safe_resource.to_s.pluralize)
        end

        @safe_resources.merge!(tmp_resources)

      end

    end

    def create_survey
      @survey            = @creatable_entries.find{|e| e.resource_name == :survey }
      @options           = { body: { survey: { name: "Docs Test at #{Date.today.strftime("%y%m%d")}" } } }
      @survey_id         = @survey.call( @survey.method, "#{@survey.request_path}", @options )["id"]
      @safe_resources[:survey]        = @survey_id
      @creatable_entries.delete_if{ |e| e.resource_name == :survey }
    end

    def create_questionnaire
      @questionnaire     = @entries.find{ |a| a.action == "index" && a.resource_name == "questionnaire".to_sym}
      @questionnaire_id  = @survey.call( :get, "/surveys/#{@survey_id}/questionnaires", @questionnaire.default_params ).first["id"]
      @safe_resources[:questionnaire] = @questionnaire_id
      @creatable_entries.delete_if{ |e| e.resource_name == :questionnaire }
    end

  end
end