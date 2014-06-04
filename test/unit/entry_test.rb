# encoding: utf-8

require 'test_helper'
require 'test/helpers/dynamic_entry'
require 'test/helpers/entries_wrapper'

class EntryTest < ActiveSupport::TestCase
  self.test_order = :defined

  def setup
  end

  TestHelpers::EntriesWrapper.new.entries.each_with_index{ |entry, index|
    parent_klass = entry.parent_klass.present? ? entry.parent_klass : ""

    define_method("test_response_code_in_#{entry.action}_#{entry.resource_name.to_s}#{parent_klass}") do
      response = entry.call
      message  = "invalid status code at #{entry.title}\nreturned #{response.code}\n#{response.parsed_response}"
      assert response.code == 200, message
    end
  }
end
