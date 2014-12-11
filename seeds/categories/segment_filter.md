---

name: segment_filter
title: フィルター設定

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/segments/:id/segment_filters](#segment_filter_index)|
|create|[POST /api/v1/segments/:id/segment_filters](#segment_filter_create)|
|show|[GET /api/v1/segment_filters/:id](#segment_filter_show)|
|update|[PUT /api/v1/segment_filters/:id](#segment_filter_update)|
|destroy|[DELETE /api/v1/segment_filters/:id](#segment_filter_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[segment](#segment)|セグメント設定|

#### ※ segment_filterは廃止予定です。また、segmentのリレーションも変更になっているので、[segment](#segment), [segment_group](#segment_group)を参照してください。