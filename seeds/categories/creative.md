---

name: creative
title: 画像

---


画像は[creative_chain](#creative_chain)によって他のオブジェクトと関連づけます。

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/surveys/:id/creatives](#creative_index)|
|create|[POST /api/v1/surveys/:id/creatives](#creative_create)|
|show|[GET /api/v1/creatives/:id](#creative_show)|
|update|[PUT /api/v1/creatives/:id](#creative_update)|
|destroy|[DELETE /api/v1/creatives/:id](#creative_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[survey](#survey)|アンケート|
|has_many|[creative_chains](#creative_chain)|画像の関連|

