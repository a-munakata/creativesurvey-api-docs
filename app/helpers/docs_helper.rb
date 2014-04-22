# encoding: utf-8

module DocsHelper
  def categories
    [
      { title: "CREATIVE SURVEY API", name: "overview" },
      { title: "ユーザー(users)", name: "user" },
      { title: "アンケート(surveys)", name: "survey" },
      { title: "質問表(questionnaires)", name: "questionnaire" },
      { title: "画像(creatives)", name: "creative" },
      { title: "最終画面(egressions)", name: "egression" }
    ].collect{ |datum|
      Category.new(datum)
    }
  end

  def docs
    Dir.glob(File.join(Rails.root, "seeds/**/*.md")).collect { |file|
      doc = Doc.new(file)
    }.select{|doc| !doc.is_disabled }.sort{|a, b|
      a.priority <=> b.priority
    }
  end
end
