require 'test_helper'
require 'test_helpers/dynamic_entry'

class EntryTest < ActiveSupport::TestCase
  def setup
    @entry = TestHelpers::DynamicEntry.new(
      "/Volumes/data/workspace/CreativeSurvey/2.0_TONARI_ALL/REPOS/a-munakata/docs/seeds/entries/answer_items/answer_item_create.md",
      { email:     "a.munakata@4digit.jp",
        password:  "fourdigit",
        end_point: "http://localhost:9292/api/v1"
      }
    )
  end

  def test_attributes_existence
    assert @entry.response.keys.all?{|param| @entry.static_response.keys.include? param }
  end
end
