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
|1対1|[design](#design)|デザイン|
||[questionnaire](#questionnaire)|質問票|
|1対n|[segments](#segment)|セグメント設定|
||[collectors](#collector)|公開設定|
||[panels](#panel)|回答者|