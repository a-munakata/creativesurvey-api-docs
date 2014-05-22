---

name: egression
title: 最終画面

---

|メソッド|概要|
|:---|:---|
|show|[GET /api/v1/egressions/:id](#egression_show)|
|update|[PUT /api/v1/egressions/:id](#egression_update)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[questionnaire](#questionnaire)|質問表|
|has_one|[creative](#creative)|画像|
||[creative_chain](#creative_chain)|画像の関連|