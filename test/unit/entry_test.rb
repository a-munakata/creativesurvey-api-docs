# encoding: utf-8

require 'test_helper'
require 'test_helpers/dynamic_entry'
require 'test_helpers/md_tester'

class EntryTest < ActiveSupport::TestCase
  def setup



    @entries = TestHelpers::MdTester.new.retrieve.select{|a| !%w(user overview).include? a.to_s }

    @result = @entries.select{|a| a.action == "create" }.collect{ |entry|
      begin
        entry.parent_resource_name.nil? ? entry.request( { body: {survey: { name: "from mk///" } } }) : entry.request_path
      rescue
        entry.resource_name
      end
    }


  end

  def test_response_to_be_hash
    @entries.each do |entry|
      assert_kind_of(Hash, entry.response, "#{entry.response}はHashではありません。\n#{entry.header}")
    end
  end

  def test_attributes_existence
    #@entries.each do |entry|
      #assert entry.response.keys.all?{|param|
      #  entry.static_response.keys.include? param
      #}, "#{entry.request_path}でassertionが失敗しました。"
      #assert entry
    #end
  end
end
