---

name: question
title: 質問

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questionnaires/:questionnaire_id/questions](#question_index)|
|create|[POST /api/v1/questionnaires/:questionnaire_id/questions](#question_create)|
|show|[GET /api/v1/questions/:id](#question_show)|
|update|[PUT /api/v1/questions/:id](#question_update)|
|destroy|[DELETE /api/v1/questions/:id](#question_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[questionnaire](#questionnaire)|質問表|
|has_one|[page_order_item](#page_order_item)|質問順序|
||[creative](#creative)|画像|
||[creative_chain](#creative_chain)|画像の関連|
|has_many|[answer_items](#answer_item)|回答項目|
||[sub_items](#sub_item)|回答補助項目|
||[logics](#logic)|分岐設定|
||[visibilities](#visibility)|表示ロジック|


