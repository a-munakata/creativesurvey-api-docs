# encoding: utf-8

require "tests/md_entry"

module DocTests
  class MdRetriever
    def retrieve
      Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).collect { |file|
        DocTests::MdEntry.new(file, {
          :auth_token => "KRXJUq7yxjT18VqpoTKp",
          :email => "a.munakata@4digit.jp",
          :password => "fourdigit",
          :endpoint => "http://localhost:9292" }
        )
      }
    end

    def match
      retrieve.collect { |entry|
        begin
          puts "Testing at #{entry.title}..."

          if entry.response.keys.all?{|response_key| entry.request }
            puts "Successed at #{entry.title}"
            {
              success: true,
              method: entry.method,
              file: entry.file_name,
              category_name: entry.category_name,
              title: entry.title
            }
          else
            puts "Failed at #{entry.title}"
            {
              success: false,
              method: entry.method,
              file: entry.file_name,
              category_name: entry.category_name,
              title: entry.title
            }
          end
        rescue
          puts "Response Not Found"
        end
      }
    end

  end
end