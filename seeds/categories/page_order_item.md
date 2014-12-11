---

name: page_order_item
title: 質問順序

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questionnaires/:id/page_order_items](#page_order_item_index)|
|update|[PUT /api/v1/page_order_items/:id](#page_order_item_update)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|1対1|[question](#question)|質問|
|n対1|[questionnaire](#questionnaire)|質問票|

#### page_order_itemは廃止予定です。今後は[questionnaire#order](#questionnaire_order)を使用してください。