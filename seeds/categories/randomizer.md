---

name: randomizer
title: ランダム設定

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questionnaires/:id/randomizers](#randomizer_index)|
|create|[POST /api/v1/questionnaires/:id/randomizers](#randomizer_create)|
|show|[GET /api/v1/randomizers/:id](#randomizer_show)|
|update|[PUT /api/v1/randomizers/:id](#randomizer_update)|
|destroy|[DELETE /api/v1/randomizers/:id](#randomizer_delete)|
|import|[PUT /api/v1/questionnaires/:id/randomizers/import](#randomizer_import)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[questionnaire](#questionnaire)|質問票|

ランダマイズのプレビューは[questionnaire#preview_order](#questionnaire_preview_order)より行う事が可能です。