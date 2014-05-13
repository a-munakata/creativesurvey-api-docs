---

name: questionnaire
title: 質問表

---

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[survey](#survey)|アンケート|
|has_one|[egression](#egression)|最終画面|
|has_many|[questionnaire_variables](#questionnaire_variable)|置き換え変数|
||[randomizers](#randomizer)|ランダム設定|
||[questions](#question)|質問|
||[page_order_items](#page_order_item)|質問順序|
