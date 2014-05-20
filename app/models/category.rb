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
      :egression,
      :randomizer,
      :design,
      :theme,
      :font,
      :google_font,
      :creative,
      :creative_chain,
      :page_order_item,
      :logic,
      :logic_item,
      :logic_action,
      :questionnaire_variable,
      :visibility,
      :visibility_target,
      :visibility_item,
      :collector,
      :segment,
      :segment_filter,
      :collector_segment_chain
    ]
  end
end
