# encoding: utf-8

require "preamble"

class Doc
  attr_accessor :header,
                :body,
                :title,
                :file_name,
                :category_id,
                :priority,
                :is_disabled

  def initialize(doc_file)
    @_header, @_body = Preamble.load(doc_file)
    @_base_name      = File.basename(doc_file, ".md")
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

  def base_name
    @_base_name
  end

  def category_name
    @_header["category_name"]
  end

  def priority
    @_header["priority"]
  end

  def is_disabled
    @_header["is_disabled"]
  end
end
