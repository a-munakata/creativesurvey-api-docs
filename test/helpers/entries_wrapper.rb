# encoding: utf-8

require 'test/helpers/dynamic_entry'

module TestHelpers
  class EntriesWrapper
    attr_accessor :end_point,
                  :entries

    def initialize
    end

    def entries
      @_entries ||= Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).select{|file|
        !File.basename(file).match(/user|overview|error_example/)
      }.collect{|file| TestHelpers::DynamicEntry.new(file) }
    end
  end
end