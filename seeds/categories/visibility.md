---

name: visibility
title: 表示ロジック

---

AND条件を追加、編集する場合は[表示アイテム(visibility_items)](#visibility_item)を、非表示にするアイテムを設定する場合は[表示ターゲット(visibility_targets)](#visibility_target)を参照ください。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questions/:id/visibilities](#visibility_index)|
|create|[POST /api/v1/questions/:id/visibilities](#visibility_create)|
|show|[GET /api/v1/visibilities/:id](#visibility_show)|
|update|[PUT /api/v1/visibilities/:id](#visibility_update)|
|destroy|[DELETE /api/v1/visibilities/:id](#visibility_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[question](#question)|質問|
|1対n|[visibility_items](#visibility_item)|表示アイテム|
||[visibility_targets](#visibility_target)|表示ターゲット|
