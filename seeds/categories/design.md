---

name: design
title: デザイン

---

|メソッド|概要|
|:---|:---|
|show|[GET /api/v1/surveys/:survey_id/design](#design_show)|
|style|[GET /api/v1/surveys/:survey_id/design/style](#design_style)|
|update|[PUT /api/v1/surveys/:survey_id/design](#design_update)|

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|1対1|[survey](#survey)|アンケート|
|n対1|[theme](#theme)|テーマ|
||[font](#font)|和文フォント|
||[google_font](#google_font)|欧文フォント|