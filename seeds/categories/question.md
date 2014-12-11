---

name: question
title: 質問

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questionnaires/:id/questions](#question_index)|
|create|[POST /api/v1/questionnaires/:id/questions](#question_create)|
|show|[GET /api/v1/questions/:id](#question_show)|
|update|[PUT /api/v1/questions/:id](#question_update)|
|destroy|[DELETE /api/v1/questions/:id](#question_delete)|
|copy|[DELETE /api/v1/questions/:id/copy](#question_copy)|
|migrate|[DELETE /api/v1/questions/:id/migrate](#question_migrate)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[questionnaire](#questionnaire)|質問票|
|1対1|[page_order_item](#page_order_item)|質問順序|
||[creative_chain](#creative_chain)|画像の関連|
|1対n|[answer_items](#answer_item)|回答項目|
||[sub_items](#sub_item)|回答補助項目|
||[logics](#logic)|分岐設定|
||[visibilities](#visibility)|表示ロジック|
||[answers](#answer)|表示ロジック|


