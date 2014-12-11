---

name: design
title: デザイン

---

|メソッド|概要|
|:---|:---|
|show|[GET /api/v1/surveys/:id/design](#design_show)|
|update|[PUT /api/v1/surveys/:id/design](#design_update)|
|style|[GET /api/v1/surveys/:id/design/style](#design_style)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|1対1|[survey](#survey)|アンケート|
||[custom_css](#custom_css)|カスタムCSS|
|n対1|[theme](#theme)|テーマ|
||[font](#font)|和文フォント|
||[google_font](#google_font)|欧文フォント|
||[transition](#transition)|トランジション|