---

name: segment
title: セグメント設定

---

セグメントで設定する条件の追加、編集は[セグメントグループ(segment_groups)](#segment_group), [セグメントアイテム(segment_items)](#segment_item),[セグメントターゲット(segment_target)](#segment_target)を参照してください。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/surveys/:id/segments](#segment_index)|
|create|[POST /api/v1/surveys/:id/segments](#segment_create)|
|show|[GET /api/v1/segments/:id](#segment_show)|
|update|[PUT /api/v1/segments/:id](#segment_update)|
|destroy|[DELETE /api/v1/segments/:id](#segment_delete)|
|panels|[GET /api/v1/segments/:id/panels](#segment_panels)|
|question|[GET /api/v1/segments/:id/question](#segment_question)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[survey](#survey)|アンケート|
|1対n|[segment_groups](#segment_group)|セグメントグループ|
||[collector_segment_chains](#collector_segment_chain)|公開設定とセグメントの関連|
|1対1|[raw_datum](#raw_datum)|ローデータ|

#### セグメントの条件指定で使用していた、[segment_filters](#segment_filter)は廃止予定です。今後は[セグメントグループ(segment_groups)](#segment_group), [セグメントアイテム(segment_items)](#segment_item),[セグメントターゲット(segment_target)](#segment_target)を使用してください。