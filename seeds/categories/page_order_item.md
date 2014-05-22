---

name: page_order_item
title: 質問順序

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questionnaires/:questionnaire_id/page_order_items](#page_order_item_index)|
|show|[GET /api/v1/page_order_items/:id](#page_order_item_show)|
|update|[PUT /api/v1/page_order_items/:id](#page_order_item_update)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[question](#question)|質問|
||[questionnaire](#questionnaire)|質問表|
