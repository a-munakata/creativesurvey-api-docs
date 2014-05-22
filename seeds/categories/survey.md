---

name: survey
title: アンケート

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/surveys](#survey_index)|
|create|[POST /api/v1/surveys](#survey_create)|
|show|[GET /api/v1/surveys/:id](#survey_show)|
|update|[PUT /api/v1/surveys/:id](#survey_update)|
|destroy|[DELETE /api/v1/surveys/:id](#survey_delete)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|has_one|[design](#design)|デザイン|
||[questionnaire](#questionnaire)|質問表|
|has_many|[questions](#question)|質問|
||[segment](#segment)|セグメント設定|
||[collectors](#collector)|公開設定|
||[creatives](#creative)|画像|
