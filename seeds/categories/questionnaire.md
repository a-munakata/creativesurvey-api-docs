---

name: questionnaire
title: 質問票

---

|メソッド|概要|
|:---|:---|
|show|[GET /api/v1/questionnaires/:id](#questionnaire_show)|
|index|[GET /api/v1/surveys/:id/questionnaires](#questionnaire_index)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|1対1|[survey](#survey)|アンケート|
||[egression](#egression)|最終画面|
|1対n|[questionnaire_variables](#questionnaire_variable)|置き換え変数|
||[randomizers](#randomizer)|ランダム設定|
||[questions](#question)|質問|
||[page_order_items](#page_order_item)|質問順序|
