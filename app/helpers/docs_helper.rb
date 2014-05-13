# encoding: utf-8

module DocsHelper
  def categories
    Dir.glob(File.join(Rails.root, "seeds/categories/**/*.md")).collect { |file|
      Category.new(file)
    }.select{|doc| !doc.is_disabled }.sort{|a, b|
      a.order_index <=> b.order_index
    }
  end

  def docs
    Dir.glob(File.join(Rails.root, "seeds/entries/**/*.md")).collect { |file|
      Doc.new(file)
    }.select{|doc| !doc.is_disabled }.sort{|a, b|
      a.order_index <=> b.order_index
    }
  end
end
