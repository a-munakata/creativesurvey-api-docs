# encoding: utf-8

require "preamble"

module DocTests
  class MdEntry
    attr_accessor :end_point,
                  :request,
                  :method,
                  :response,
                  :auth_token,
                  :email,
                  :password,
                  :file_name,
                  :header,
                  :body,
                  :title,
                  :category_name
                    

    def initialize(file, options={})
      @_file_name  = file
      @_file       = File.read(@_file_name)
      @options     = options

      @_auth_token = @options[:auth_token]
      @_email      = @options[:email]
      @_password   = @options[:password]
      @_endpoint   = @options[:endpoint]
      @_header, @_body = Preamble.load(@_file_name)
    end

    def file_name
      @_file_name
    end

    def header
      @_header
    end

    def body
      @_body
    end

    def title
      @_header["title"]
    end

    def category_name
      @_header["category_name"].to_sym
    end

    def method
      @_file.scan(/\$.*(?=レスポンス例)/m).first.gsub(/https:\/\/creativesurvey\.com/, @_endpoint).gsub(/\n/, "").gsub(/\\/, "").gsub(/^\$\s/, "").gsub(/YourAuthToken/, @_auth_token).gsub(/sample_email/, @_email).gsub(/sample_password/, @_password)
    end

    def request
      `#{method}`
    end

    def response
      JSON.parse(@_file.scan(/レスポンス例.*?}$/m).first.gsub(/レスポンス例\n/, ""))
    rescue
      puts "JSON:: ParserError at #{@_file}"
    end

    def auth_token
      @_auth_token
    end

    def email
      @_email
    end

    def password
      @_password
    end

    def endpoint
      @_endpoint
    end

  end
end
