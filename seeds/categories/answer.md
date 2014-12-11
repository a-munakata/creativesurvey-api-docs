---

name: answer
title: 回答の集計

---

|メソッド|概要|
|:---|:---|
|index|[GET https://creativesurvey.com/api/v1/panels/:id/answers](#answer_index)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[panel](#panel)|回答者|
||[question](#question)|質問|
||[answer_item](#answer_item)|回答項目|
||[sub_item](#sub_item)|回答補助項目|

#### 回答の集計は廃止予定です。今後は[回答者の集計](#panel)を使用してください.