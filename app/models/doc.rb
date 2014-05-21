# encoding: utf-8

require "preamble"

class Doc
  attr_accessor :header,
                :body,
                :title,
                :file_name,
                :category_id,
                :priority,
                :is_disabled,
                :method,
                :parent_klass

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
    @_header["category_name"].to_sym
  end

  def order_index
    order.index(method.try(:to_sym)).present? ? order.index(method.try(:to_sym)) : 999
  end

  def parent_klass_order_index
    parent_klass_order.index(parent_klass.try(:to_sym)).present? ? parent_klass_order.index(parent_klass.try(:to_sym)) : 999
  end

  def is_disabled
    @_header["is_disabled"]
  end

  def method
    @_header["method"]
  end

  def parent_klass
    @_header["parent_klass"]
  end

private
  def order
    [
      :create,
      :publish,
      :abort,
      :index,
      :update,
      :show,
      :delete
    ]
  end

  def parent_klass_order
    [
      :question,
      :answer_item,
      :sub_item,
      :collector,
      :segment
    ]
  end
end
