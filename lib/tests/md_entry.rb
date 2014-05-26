# encoding: utf-8

require "preamble"

module DocTests
  class MdEntry
    attr_accessor :end_point,
                  :request,
                  :method,
                  :md_response,
                  :curl_response,
                  :auth_token,
                  :email,
                  :password,
                  :file,
                  :file_name,
                  :header,
                  :body,
                  :title,
                  :category_name,
                  :errors,
                  :message


    def initialize(file, options={})
      @options     = options
      @_file_name  = file
      @_file       = File.read(@_file_name)
      @_auth_token = @options[:auth_token]
      @_email      = @options[:email]
      @_password   = @options[:password]
      @_endpoint   = @options[:endpoint]

      @_header, @_body = Preamble.load(@_file_name)
    end

    def file;      @_file       end
    def file_name; @_file_name  end
    def header;    @_header     end
    def body;      @_body       end
    def errors;    @_errors     end
    def auth_token;@_auth_token end
    def email;     @_email      end
    def password;  @_password   end
    def endpoint;  @_endpoint   end

    def title
      @_header["title"] if @_header.present?
    end

    def category_name
      @_header["category_name"].to_sym if @_header.present?
    end

    def method
      @_method = @_file.scan(/\$.*(?=レスポンス例)/m).first.present? && @_file.scan(/\$.*(?=レスポンス例)/m).first.gsub(/https:\/\/creativesurvey\.com/, @_endpoint).gsub(/\n/, "").gsub(/\\/, "").gsub(/^\$\s/, "").gsub(/YourAuthToken/, @_auth_token).gsub(/sample_email/, @_email).gsub(/sample_password/, @_password)
    end

    def request
      `#{method}`
    end

    def curl_response
      res ||= JSON.parse(request)
      res.kind_of?(Array) ? res.first : res
    end

    def md_response
      response = @_file.scan(/レスポンス例.*?}$/m).first.gsub(/レスポンス例\n/, "").gsub(/,\n?\s\s\{\.\.\.},\n\s\s\{\.\.\.}/, "")

      if @_file.match(/^\[/)
        JSON.parse(response + "]").first
      else
        JSON.parse(response)
      end

    rescue
      puts "JSON::ParserError at #{@_file}"
      @_errors = base_errors(false, "JSON::ParserError")
    end

    def message(status = "")
      if status == :success
        puts "Successed at #{title}"
        @_errors = base_errors(true, "Success")
      elsif status == :fail
        puts "Response Not Found at #{title}."
        @_errors = base_errors(false, "Resource Not Found.")
      elsif status == :rescue
        puts "Rescued at #{title}"
        @_errors = base_errors(false, "Rescued at #{title}.")
      else
        @_errors = base_errors(false, "Something Went Wrong.")
      end
    end

    def base_errors(success = nil, message = "")
      {
        success: success,
        method: method,
        file: file_name,
        category_name: category_name,
        title: title,
        message: message
      }
    end
  end
end
