# encoding: utf-8

require 'erb'

namespace :test do
  desc "Export Test File"

  task :export => :environment do
    puts "exporting test file..."

    template = ERB.new(open(File.join(Rails.root, "test/helpers", "entry_test_template.erb")).read).result
    File.write(File.join(Rails.root, "test/unit", "exported_entry_test.rb"), template )
  end
end
