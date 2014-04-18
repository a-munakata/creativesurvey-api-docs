# encoding: utf-8

module DocsHelper
  def categories
    [
      { title: "はじめに", name: "overview" },
      { title: "ユーザー", name: "user" },
      { title: "アンケート", name: "survey" },
      { title: "質問表", name: "questionnaire" }
    ].collect{ |datum|
      Category.new(datum)
    }
  end

  def docs
    Dir.glob(File.join(Rails.root, "seeds/**/*.md")).collect { |file|
      Doc.new(file)
    }.sort{|a, b|
      a.priority <=> b.priority
    }
  end
end
