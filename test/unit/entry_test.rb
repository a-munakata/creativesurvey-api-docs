# encoding: utf-8

require 'test_helper'
require 'test_helpers/dynamic_entry'
require 'test_helpers/md_tester'
#require 'test/unit/helpers/entries_helper_test'

class EntryTest < ActiveSupport::TestCase
  def setup
    @entries = TestHelpers::MdTester.new.retrieve.select{|a|
      !%w(user overview error_example).include? a.resource_name.to_s
    }
    @creatable_entries = @entries.select{|a| a.action == "create" }

    @survey    = @creatable_entries.find{|e| e.resource_name == :survey }
    @safe_ids  = []
    @survey_id = @survey.call(
      @survey.method,
      "#{@survey.request_path}",
      { body: { survey: { name: "Docs Test at #{Date.today.strftime("%y%m%d")}" } } }
    )["id"]
    @safe_ids << "@survey_id".to_sym

    @creatable_entries.delete_if{ |e| e.resource_name == :survey }



    result = {}
    @creatable_entries.each{ |e|
      result[e.parent_resource_name] ||= []
      result[e.parent_resource_name] << e
    }



    result["surveys"].each do |entry|
      if entry.body.scan(/.*必須.*/).any?{|w| w.match(/name/) }
        instance_variable_set "@#{entry.resource_name.to_s}_id", entry.call( entry.method, entry.request_path(parent_resource_id: @survey_id.to_s), entry.default_params.deep_merge({
          body: { entry.resource_name => { name: "new_#{entry.resource_name.to_sym}" }} })
        )["id"]
      else
        instance_variable_set "@#{entry.resource_name.to_s}_id", entry.call( entry.method, entry.request_path(parent_resource_id: @survey_id.to_s), entry.default_params )["id"]
      end
      @safe_ids << "@#{entry.parent_resource_name.to_s}_id".to_sym if entry.parent_resource_name.present?
    end

    result.delete("surveys")

  end

  TestHelpers::MdTester.new.retrieve.select{ |a|
    !%w(user overview error_example).include? a.resource_name.to_s
  }.each{ |entry|
    parent_klass = entry.parent_klass.present? ? entry.parent_klass : ""

    define_method("test_response_code_in_#{entry.action}_#{entry.resource_name.to_s}#{parent_klass}") do
      response = entry.class.send(
        entry.method,
        "#{entry.end_point}#{entry.request_path}",
        entry.default_params
      )
      assert response.code == 200, "invalid status code at #{entry.title}\nreturned #{response.code}\n#{response.parsed_response}"
    end
  }
end
