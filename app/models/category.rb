# encoding: utf-8

class Category
  attr_accessor :title,
                :name,
                :description

  def initialize(doc_file)
    @_header, @_body = Preamble.load(doc_file)
    @_base_name      = File.basename(doc_file, ".md")
  end

  def title
    @_header["title"]
  end

  def name
    @_header["name"]
  end

  def base_name
    @_base_name
  end

  def body
    @_body
  end

  def order_index
    order.index(name.to_sym).present? ? order.index(name.to_sym) : 999
  end

  def is_disabled
    @_header["is_disabled"]
  end

private
  def order
    [
      :overview,
      :user,
      :survey,
      :questionnaire,
      :question,
      :answer_item,
      :sub_item,
      :creative,
      :egression,
      :randomizer,
      :design,
      :page_order_item,
      :logic,
      :questionnaire_variable,
      :visibility,
      :collector,
      :segment,
      :segment_filter
    ]
  end
end
