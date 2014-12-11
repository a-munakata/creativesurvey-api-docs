---

name: segment_group
title: セグメントグループ

---

セグメントグループは、複数の[セグメントアイテム](#segment_item)を持ちます。セグメントの条件指定では複数のセグメントグループを指定することができ、そのグループを含めるか除外するかと言う設定が出来ます。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/segments/:id/segment_groups](#segment_group_index)|
|create|[POST /api/v1/segments/:id/segment_groups](#segment_group_create)|
|show|[GET /api/v1/segment_groups/:id](#segment_group_show)|
|update|[PUT /api/v1/segment_groups/:id](#segment_group_update)|
|destroy|[DELETE /api/v1/segment_groups/:id](#segment_group_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[segment](#segment)|セグメント設定|
|1対n|[segment_items](#segment_item)|セグメントアイテム|
