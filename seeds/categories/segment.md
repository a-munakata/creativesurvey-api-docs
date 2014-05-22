---

name: segment
title: セグメント設定

---

セグメント設定は複数の[フィルター設定(segment_filters)](#segment_filter)を持つことが出来ます。
セグメントで設定する条件の追加、編集は[フィルター設定(segment_filters)](#segment_filter)を参照ください。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/surveys/:id/segments](#segment_index)|
|create|[POST /api/v1/surveys/:id/segments](#segment_create)|
|show|[GET /api/v1/segments/:id](#segment_show)|
|update|[PUT /api/v1/segments/:id](#segment_update)|
|destroy|[DELETE /api/v1/segments/:id](#segment_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[survey](#survey)|アンケート|
|has_many|[segment_filters](#segment_filter)|フィルター設定|
||[collectors](#collector)|公開設定|
