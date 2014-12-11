---

name: answer_item
title: 回答項目

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questions/:id/answer_items](#answer_item_index)|
|create|[POST /api/v1/questions/:id/answer_items](#answer_item_create)|
|show|[GET /api/v1/answer_items/:id](#answer_item_show)|
|update|[PUT /api/v1/answer_items/:id](#answer_item_update)|
|destroy|[DELETE /api/v1/answer_items/:id](#answer_item_delete)|
|bulk|[POST /api/v1/answer_items/:id/bulk](#answer_item_bulk)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[question](#question)|質問|
|1対1|[creative_chain](#creative_chain)|画像の関連|
||[visibility_target](#visibility_target)|表示ターゲット|
|1対n|[sub_items](#sub_item)|回答補助項目|

