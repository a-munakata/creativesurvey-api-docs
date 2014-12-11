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
|1対1|[questionnaire](#questionnaire)|質問票|
||[creative_chain](#creative_chain)|画像の関連|

#### ※ 最終画面は廃止予定です。今後は[question](#question)に、最終ステップと言う質問タイプが追加されるので、そちらを利用してください。