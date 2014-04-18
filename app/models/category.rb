# encoding: utf-8

class Category
  attr_accessor :title,
                :name

  def initialize(data)
    @_title = data[:title]
    @_name  = data[:name]
  end

  def title
    @_title
  end

  def name
    @_name
  end
end
