
---

category_name: survey
title: アンケートのコピー(ギフトコードから)
action: gift

---

# アンケートのコピー(ギフトコードから)

## ギフトコードからアンケートをコピーします。

`POST https://creativesurvey.com/api/v1/surveys/:id/gift`

id _(必須)_:
: __integer__
: コピーするアンケートのギフトコード

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/sample_gift_code/gift \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "active_segment_id": null,
  "completed_panels_count": null,
  "created_at": "2014-12-11T14:26:14+09:00",
  "edit_count": 0,
  "gift_code": "1e1af31e000f170b5c055f2d8708388b4daa1fb7",
  "gift_count": 0,
  "gift_level": null,
  "id": 27501,
  "inbox_id": 20,
  "is_deleted": false,
  "is_duplicating": false,
  "is_gift": false,
  "is_processing_statistic": null,
  "is_public": false,
  "is_public_preview": 0,
  "is_published": false,
  "last_panel_id": null,
  "name": "ASCII",
  "panels_count": null,
  "password": null,
  "preview_count": 0,
  "preview_password": "",
  "public_token": "04d31057fee334543452255fba79373a23c69c30",
  "published_at": "2014-12-08T14:57:56+09:00",
  "questions_count": 0,
  "statistic_make_at": null,
  "tag_color": "novel",
  "updated_at": "2014-12-11T14:26:14+09:00",
  "status": "edit",
  "color": "novel",
  "result_url": "https://creativesurvey.com/public/results/04d31057fee334543452255fba79373a23c69c30/summary",
  "preview_url": "https://creativesurvey.com/ng/surveys/27501/public/preview"
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

