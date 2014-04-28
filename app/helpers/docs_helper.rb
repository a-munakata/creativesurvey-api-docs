# encoding: utf-8

module DocsHelper
  def categories
    [
      { title: "CREATIVE SURVEY API", name: "overview" },
      { title: "ユーザー", name: "user" },
      { title: "アンケート", name: "survey" },
      { title: "質問表", name: "questionnaire" },
      { title: "質問", name: "question"},
      { title: "画像", name: "creative" },
      { title: "最終画面", name: "egression" },
      { title: "ランダム設定", name: "randomizer" },
      { title: "質問順序", name: "page_order_item" },
      { title: "置き換え変数設定", name: "questionnaire_variable" },
      { title: "回答項目", name: "answer_item" },
      { title: "回答補助項目", name: "sub_item" },
      { title: "分岐設定", name: "logic" },
      { title: "デザイン", name: "design" },
      { title: "セグメント設定", name: "segment" },
      { title: "フィルター設定", name: "segment_filter" }
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
