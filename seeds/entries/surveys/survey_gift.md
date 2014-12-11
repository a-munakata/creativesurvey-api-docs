---

category_name: survey
title: アンケートのコピー(ギフトコードから)
action: gift

---

# アンケートのコピー(ギフトコードから)

## アンケートをギフトコードからコピーします。

`POST https://creativesurvey.com/api/v1/surveys/:gift_code/gift`

gift_code _(必須)_:
: __integer__
: コピーするアンケートのgift_code

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/sample_gift_code/copy \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "active_segment_id": null,
  "completed_panels_count": null,
  "created_at": "2014-12-09T18:24:32+09:00",
  "edit_count": 0,
  "gift_code": "0e0e226afe8db129f56f06be346cec93c28b3d8c",
  "gift_count": 0,
  "gift_level": null,
  "id": 27307,
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
  "public_token": "c712d3cc6ae7b5f58af13465559596fdae4de0f4",
  "published_at": "2014-12-08T14:57:56+09:00",
  "questions_count": 0,
  "statistic_make_at": null,
  "tag_color": "novel",
  "updated_at": "2014-12-09T18:24:33+09:00",
  "status": "edit",
  "color": "novel",
  "result_url": "https://edge.creativesurvey.com/public/results/c712d3cc6ae7b5f58af13465559596fdae4de0f4/summary",
  "preview_url": "https://edge.creativesurvey.com/ng/surveys/27307/public/preview"
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

