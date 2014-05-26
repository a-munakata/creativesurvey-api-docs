# encoding: utf-8

require "tests/md_entry"

module CSDoc
  class MdTester
    END_POINT = "http://localhost:9292"

    def retrieve
      @retrieve_result ||= Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).collect { |file|
        DocTests::MdEntry.new(file, {
          :auth_token => ENV["DOC_AUTH_TOKEN"],
          :email => ENV["DOC_USER"],
          :password => ENV["DOC_PASSWORD"],
          :endpoint => END_POINT }
        )
      }
    end

    def assert_all
      @assert_result ||= retrieve.collect.with_index { |entry, index|
        puts "Testing at #{entry.file_name}..."
        begin
          entry.md_response.keys.all?{|response_key| entry.curl_response.keys.include? response_key } ? entry.message(:success) : entry.message(:fail)
        rescue
          entry.message(:rescue)
        end
      }
    end

    def errors
      assert_all.select{|res| res[:success] != true }
    end

    def result
      pp "Errors at#{errors}"
      pp "#{errors.count} tests has been failed."
      pp "#{((assert_all.compact.count.to_f - errors.compact.count.to_f) / @retrieve_result.compact.count.to_f).round(2) * 100}% successed."
    end

    def export
      File.write(assert_all.to_json, "/tmp/docs_test_log.json")
    end

  end
end