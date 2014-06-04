# encoding: utf-8

require 'test/helpers/dynamic_entry'

module TestHelpers
  class EntriesWrapper
    attr_accessor :end_point,
                  :entries,
                  :safe_resources,
                  :creatable_entries,
                  :uncreatable_entries

    def initialize(end_point=nil)
      @files = retrieve_files

      @end_point          ||= (end_point || "http://localhost:9292/api/v1")
      @entries             = retrieve
      @creatable_entries   = @entries.select{|a| a.action == "create" }
      @uncreatable_entries = @entries.select{|e| !@creatable_entries.collect{|c| c.title }.include? e.title }
      @safe_resources      = {}

      setup_resources
    end

    def retrieve
      puts "started retrieving data..."

      @retrieved_result ||= @files.collect { |file|
        TestHelpers::DynamicEntry.new( file, { end_point: @end_point } )
      }.sort  { |a, b| a.parent_klass_order_index <=> b.parent_klass_order_index
      }.sort  { |a, b| a.order_index <=> b.order_index }
    end

    private

    def setup_resources
      create_survey
      create_questionnaire

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
              entry.required_id = safe_id.to_s

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

      set_ids
    end

    def set_ids
      @uncreatable_entries.each do |entry|
        entry.required_id = @safe_resources[
          entry.parent_resource_name.try(:singularize).try(:to_sym)
        ].try(:to_s)

        entry.required_id = @survey_id.to_s                      if entry.resource_name == :egression
        entry.required_id = entry.candidate_parent_id.try(:to_s) if entry.required_id.nil?
      end
    end

    def create_survey
      @survey            = @creatable_entries.find{|entry| entry.is_survey? }
      @options           = { body: { survey: { name: "Docs Test at #{Date.today.strftime("%y%m%d")}" } } }
      @survey_id         = @survey.call( @survey.method, "#{@survey.request_path}", @options )["id"]
      @safe_resources[:survey] = @survey_id
      @creatable_entries.delete_if{ |e| e.resource_name == :survey }
    end

    def create_questionnaire
      @questionnaire     = @entries.find{ |entry| entry.is_questionnaire? }
      @questionnaire_id  = @survey.call( :get, "/surveys/#{@survey_id}/questionnaires", @questionnaire.default_params ).first["id"]
      @safe_resources[:questionnaire] = @questionnaire_id
      @creatable_entries.delete_if{ |e| e.resource_name == :questionnaire }
    end

    def retrieve_files
      Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).select { |file|
        !File.basename(file).match(/user|overview|error_example/)
      }
    end
  end
end