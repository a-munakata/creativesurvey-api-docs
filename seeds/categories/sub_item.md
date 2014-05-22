---

name: sub_item
title: 回答補助項目

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questions/:id/sub_items](#sub_item_index)|
|create|[POST /api/v1/questions/:id/sub_items](#sub_item_create)|
|show|[GET /api/v1/sub_items/:id](#sub_item_show)|
|update|[PUT /api/v1/sub_items/:id](#sub_item_update)|
|destroy|[DELETE /api/v1/sub_items/:id](#sub_item_delete)|


|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[question](#question)|質問|
||[answer_item](#answer_item)|回答項目|
|has_one|[creative_chain](#creative_chain)|画像の関連|
||[creative](#creative)|画像|