---

name: answer_item
title: 回答項目

---

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[question](#question)|質問|
|has_one|[creative](#creative)|画像|
||[creative_chain](#creative_chain)|画像の関連|
||[visibility_target](#visibility_target)|表示ターゲット|
|has_many|[sub_items](#sub_item)|回答補助項目|

