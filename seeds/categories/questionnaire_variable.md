---

name: questionnaire_variable
title: 置き換え変数設定

---

|メソッド|概要|
|:---|:---|
|index|[GET /api/v1/questionnaires/:id/questionnaire_variables](#questionnaire_variable_index)|
|create|[POST /api/v1/questionnaires/:id/questionnaire_variables](#questionnaire_variable_create)|
|show|[GET /api/v1/questionnaire_variables/:id](#questionnaire_variable_show)|
|update|[PUT /api/v1/questionnaire_variables/:id](#questionnaire_variable_update)|
|destroy|[DELETE /api/v1/questionnaire_variables/:id](#questionnaire_variable_delete)|


|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[questionnaire](#questionnaire)|質問表|
||[question](#question)|質問|
||[answer_item](#answer_item)|回答項目|
||[sub_item](#sub_item)|回答補助項目|