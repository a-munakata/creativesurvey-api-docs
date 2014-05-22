---

name: logic_action
title: 分岐アクション

---

分岐アクションでは、分岐を設定した際に表示されるメッセージや質問のとび先を設定します。
分岐設定の追加、編集は[分岐設定](#logic)を参照ください。

|メソッド|概要|
|:---|:---|
|create|[POST /api/v1/logics/:id/logic_action](#logic_action_create)|
|show|[GET /api/v1/logic_action/:id](#logic_action_show)|
|update|[PUT /api/v1/logic_action/:id](#logic_action_update)|
|destroy|[DELETE /api/v1/logic_action/:id](#logic_action_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[question](#question)|質問|
||[logic](#logic)|分岐設定|
