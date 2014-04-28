# encoding: utf-8

module DocsHelper
  def categories
    [
      { title: "CREATIVE SURVEY API", name: "overview" },
      { title: "ユーザー(users)", name: "user" },
      { title: "アンケート(surveys)", name: "survey" },
      { title: "質問表(questionnaires)", name: "questionnaire" },
      { title: "質問(questions)", name: "question"},
      { title: "画像(creatives)", name: "creative" },
      { title: "最終画面(egressions)", name: "egression" },
      { title: "ランダム設定(randomizers)", name: "randomizer" },
      { title: "質問順序(page_order_items)", name: "page_order_item" },
      { title: "置き換え変数設定(questionnaire_variables)", name: "questionnaire_variable" },
      { title: "回答項目(answer_items)", name: "answer_item" },
      { title: "回答補助項目(sub_items)", name: "sub_item" },
      { title: "分岐設定(logics)", name: "logic" },
      { title: "デザイン(designs)", name: "design" },
      { title: "セグメント設定(segments)", name: "segment" },
      { title: "フィルター設定(segment_filters)", name: "segment_filter" }
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
