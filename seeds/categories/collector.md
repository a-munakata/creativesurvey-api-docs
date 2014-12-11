---

name: collector
title: 公開設定

---

アンケートの公開URLは公開設定(collector)の[urlパラメータより取得](#collector_index)する事が出来ます。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/surveys/:id/collectors](#collector_index)|
|create|[POST /api/v1/surveys/:id/collectors](#collector_create)|
|show|[GET /api/v1/collectors/:id](#collector_show)|
|update|[PUT /api/v1/collectors/:id](#collector_update)|
|destroy|[DELETE /api/v1/collectors/:id](#collector_delete)|
|publish|[POST /api/v1/collectors/:id/publish](#collector_publish)|
|abort|[POST /api/v1/collectors/:id/abort](#collector_abort)|
|copy|[POST /api/v1/collectors/:id/copy](#collector_copy)|
|image|[POST /api/v1/collectors/:id/image](#collector_image)|
|code|[POST /api/v1/collectors/:id/code](#collector_code)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[survey](#survey)|アンケート|
|1対1|[collector_segment_chain](#collector_segment_chain)|公開設定とセグメントの関連|