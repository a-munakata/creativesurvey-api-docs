---

name: segment_target
title: セグメントターゲット

---

セグメントアイテムは複数のセグメントターゲットを持つ事が出来ます。セグメントターゲットでは、どう言った条件でセグメントをするか、と言う詳細を設定します。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/segment_items/:id/segment_targets](#segment_target_index)|
|create|[POST /api/v1/segment_items/:id/segment_targets](#segment_target_create)|
|show|[GET /api/v1/segment_targets/:id](#segment_target_show)|
|update|[PUT /api/v1/segment_targets/:id](#segment_target_update)|
|destroy|[DELETE /api/v1/segment_targets/:id](#segment_target_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[segment_items](#segment_items)|セグメントアイテム|
