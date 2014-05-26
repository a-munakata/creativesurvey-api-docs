# encoding: utf-8

require "tests/md_entry"

module CSDoc
  class MdTester
    END_POINT = "http://localhost:9292"

    attr_accessor :auth_token,
                  :email,
                  :password,
                  :endpoint

    def initialize(auth_token = nil, email = nil, password = nil, endpoint = nil)
      @auth_token = auth_token || ENV["CS_AUTH_TOKEN"]
      @email      = email      || ENV["CS_USER"]
      @password   = password   || ENV["CS_PASSWORD"]
      @endpoint   = endpoint   || END_POINT
    end

    def retrieve(target = nil)
      target_dir = target.nil? ? "**" : target

      @retrieve_result ||= Dir.glob(File.join(Rails.root, "seeds/entries/#{target_dir}/*.md")).collect { |file|
        @doc_entry = CSDoc::MdEntry.new(file, {
          auth_token: @auth_token,
          email:      @email,
          password:   @password,
          endpoint:   @endpoint }
        )
        @doc_entry unless %w(overview error_example).include? @doc_entry.category_name.to_s
      }
    end
    #
    #def assert_all
    #  @assert_result ||= retrieve.compact.collect.with_index { |entry, index|
    #    puts "Testing at #{entry.file_name}..."
    #    begin
    #      entry.md_response.keys.all?{|response_key| entry.curl_response.keys.include? response_key } ? entry.message(:success) : entry.message(:fail)
    #    rescue
    #      entry.message(:rescue)
    #    end
    #  }
    #end

    #def errors
    #  assert_all.select{|res| res[:success] != true }
    #end
    #
    #def result
    #  pp "Errors at#{errors}"
    #  pp "#{errors.count} tests has been failed."
    #  pp "#{((assert_all.compact.count.to_f - errors.compact.count.to_f) / @retrieve_result.compact.count.to_f).round(2) * 100}% successed."
    #end
    #
    #def export
    #  File.write(assert_all.to_json, "/tmp/docs_test_log.json")
    #end

  end
end