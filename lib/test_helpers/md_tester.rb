# encoding: utf-8

require "test_helpers/dynamic_entry"

module TestHelpers
  class MdTester

    def initialize(end_point=nil)
      @end_point ||= (end_point || "http://localhost:9292/api/v1")
    end

    def retrieve(target=nil)
      target_dir = target.nil? ? "**" : target

      @retrieve_result ||= Dir.glob(File.join(Rails.root, "seeds/entries/#{target_dir}/*.md")).collect { |file|
        @entry = TestHelpers::DynamicEntry.new(
          file, { email: ENV["CS_USER"], password: ENV["CS_PASSWORD"], end_point: @end_point }
        )

      }.sort{|a, b| a.parent_klass_order_index <=> b.parent_klass_order_index
      }.sort{|a, b| a.order_index <=> b.order_index }
    end

  end
end