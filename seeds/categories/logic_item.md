---

name: logic_item
title: 分岐アイテム

---

分岐アイテムでは、分岐設定の条件を指定します。
分岐設定は複数の分岐アイテムを持つことができ、それぞれにどの質問のどの項目を選択した際(もしくは選択しなかった際)に分岐をするかと言う設定が出来ます。
分岐設定の追加、編集は[分岐設定](#logic)を参照ください。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/logics/:id/logic_items](#logic_item_index)|
|create|[POST /api/v1/logics/:id/logic_items](#logic_item_create)|
|show|[GET /api/v1/logic_items/:id](#logic_item_show)|
|update|[PUT /api/v1/logic_items/:id](#logic_item_update)|
|destroy|[DELETE /api/v1/logic_items/:id](#logic_item_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[answer_item](#answer_item)|回答項目|
||[question](#question)|質問|
||[logic](#logic)|分岐設定|
