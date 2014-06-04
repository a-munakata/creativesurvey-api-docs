# encoding: utf-8

require 'test/helpers/dynamic_entry'

module TestHelpers
  class EntriesWrapper
    attr_accessor :end_point,
                  :entries,
                  :safe_resources

    def initialize(end_point=nil)
      @end_point         ||= (end_point || "http://localhost:9292/api/v1")
      @entries           = retrieve
      @creatable_entries = @entries.select{|a| a.action == "create" }
      @safe_resources    = {}

      self.setup_resources
    end

    def retrieve(target=nil)
      puts "started retrieving data..."
      target_dir = target.nil? ? "**" : target

      @retrieve_result ||= Dir.glob(File.join(Rails.root, "seeds/entries/#{target_dir}/*.md")).collect { |file|
        @entry = TestHelpers::DynamicEntry.new(
          file, { email: ENV["CS_USER"], password: ENV["CS_PASSWORD"], end_point: @end_point }
        )
      }.select{ |a|
        !%w(user overview error_example).include? a.resource_name.to_s
      }.sort  { |a, b| a.parent_klass_order_index <=> b.parent_klass_order_index
      }.sort  { |a, b| a.order_index <=> b.order_index
      }
    end

    def setup_resources
      self.create_survey
      self.create_questionnaire

      puts "started setup resources..."
      @tmp_result = {}
      @creatable_entries.each{ |e|
        @tmp_result[e.parent_resource_name || "surveys"] ||= []
        @tmp_result[e.parent_resource_name || "surveys"] << e
      }

      while @tmp_result.length > 0
        tmp_resources = {}

        @safe_resources.each do |safe_resource, safe_id|
          entries = @tmp_result[safe_resource.to_s.pluralize]
          entries.present? && entries.each do |entry|
            begin
              entry.required_id        = safe_id.to_s

              response   = entry.call
              created_id = response["id"].present? ? response["id"] : response.parsed_response

              tmp_resources[entry.resource_name] = created_id
            rescue => e
              puts "setup failed"
              puts e.message
              puts e.backtrace
              tmp_resources[entry.resource_name] = created_id
            end
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