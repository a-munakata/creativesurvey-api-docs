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
      a.parent_klass_order_index <=> b.parent_klass_order_index
    }.select{|doc| !doc.is_disabled }.sort{|a, b|
      a.order_index <=> b.order_index
    }
  end

  def categories_with_roles
    Category.roles
  end

  def roles
    categories_with_roles.values.uniq.compact
  end

  def application_css
    File.read("./public/source/stylesheets/application.css").html_safe
  end

  def application_js
    File.read("./public/source/javascripts/application.js").html_safe
  end
end
