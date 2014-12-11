---

name: panel_reply
title: 回答者

---

|メソッド|概要|
|:---|:---|
|index|[GET https://creativesurvey.com/api/v1/surveys/:id/panels](#panel_index_survey)|
|index|[GET https://creativesurvey.com/api/v1/segments/:id/panels](#panel_index_segment)|
|show|[GET https://creativesurvey.com/api/v1/panels/:id](#panel_show)|
  
|リレーション|リソース名|日本語名|
|:---|:---|:---|
|n対1|[survey](#survey)|アンケート|
||[collector](#collector)|公開設定|
|1対n|[answers](#answer)|回答|
