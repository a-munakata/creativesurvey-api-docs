---

name: collector
title: 公開設定

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/surveys/:survey_id/collectors](#collector_index)|
|create|[POST /api/v1/surveys/:survey_id/collectors](#collector_create)|
|show|[GET /api/v1/collectors/:id](#collector_show)|
|update|[PUT /api/v1/collectors/:id](#collector_update)|
|destroy|[DELETE /api/v1/collectors/:id](#collector_delete)|
|publish|[POST /api/v1/collectors/:id/publish](#collector_publish)|
|abort|[POST /api/v1/collectors/:id/abort](#collector_abort)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[survey](#survey)|アンケート|
|has_one|[collector_segment_chain](#collector_segment_chain)|公開設定とセグメントの関連|