---

name: visibility_target
title: 表示ターゲット

---

表示ロジックの作成、編集は[表示ロジック(visibility)](#visibility)をご覧ください。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/visibilities/:visibility_id/visibility_targets](#visibility_target_index)|
|create|[POST /api/v1/visibilities/:visibility_id/visibility_targets](#visibility_target_create)|
|show|[GET /api/v1/visibility_targets/:id](#visibility_target_show)|
|update|[PUT /api/v1/visibility_targets/:id](#visibility_target_update)|
|destroy|[DELETE /api/v1/visibility_targets/:id](#visibility_target_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[visibility](#visibility)|表示ロジック|
||[answer_item](#answer_item)|質問項目|
