---

name: segment_item
title: セグメントアイテム

---

セグメントグループには、複数のセグメントアイテムがあり、それぞれのアイテムはAND条件で評価するかOR条件で評価するかを指定することが出来ます。セグメントアイテムは、複数の[セグメントターゲット](#segment_target)を持ちます。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/segment_groups/:id/segment_items](#segment_item_index)|
|create|[POST /api/v1/segment_groups/:id/segment_items](#segment_item_create)|
|show|[GET /api/v1/segment_items/:id](#segment_item_show)|
|update|[PUT /api/v1/segment_items/:id](#segment_item_update)|
|destroy|[DELETE /api/v1/segment_items/:id](#segment_item_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[segment_groups](#segment_group)|セグメントグループ|
|1対n|[segment_targets](#segment_target)|セグメントターゲット|
