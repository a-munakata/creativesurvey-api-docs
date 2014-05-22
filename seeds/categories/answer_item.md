---

name: answer_item
title: 回答項目

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questions/:question_id/answer_items](#answer_item_index)|
|create|[POST /api/v1/questions/:question_id/answer_items](#answer_item_create)|
|show|[GET /api/v1/answer_items/:id](#answer_item_show)|
|update|[PUT /api/v1/answer_items/:id](#answer_item_update)|
|destroy|[DELETE /api/v1/answer_items/:id](#answer_item_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[question](#question)|質問|
|has_one|[creative](#creative)|画像|
||[creative_chain](#creative_chain)|画像の関連|
||[visibility_target](#visibility_target)|表示ターゲット|
|has_many|[sub_items](#sub_item)|回答補助項目|

