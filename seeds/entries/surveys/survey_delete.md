---

category_name: survey
title: アンケートの削除
action: delete

---

# アンケートの削除

## アンケートを削除します。

`DELETE http://creativesurvey.com/api/v1/surveys/:id`

id _(必須)_:
: __integer__
: 削除するアンケートのid

~~~

リクエスト例
$ curl -X DELETE http://creativesurvey.com/api/v1/surveys/7751 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "active_segment_id": null,
  "completed_panels_count": null,
  "created_at": "2014-10-31T11:26:40+09:00",
  "edit_count": 0,
  "gift_code": "47372b8a92e958b093ac3a0fe36d203a35470aa5",
  "gift_count": 0,
  "id": 7751,
  "inbox_id": 6,
  "is_deleted": true,
  "is_duplicating": false,
  "is_gift": false,
  "is_processing_statistic": null,
  "is_public": false,
  "is_public_preview": null,
  "is_published": false,
  "name": "sample_survey",
  "panels_count": null,
  "password": null,
  "preview_count": 0,
  "preview_password": null,
  "public_token": "2f67f137146f3c1c2e40f29ec41266a1260746d2",
  "published_at": null,
  "questions_count": 0,
  "statistic_make_at": null,
  "tag_color": "red",
  "updated_at": "2014-10-31T11:43:09+09:00",
  "status": "edit",
  "color": "cinnabar",
  "result_url": "https://mosson-book.local/public/results/2f67f137146f3c1c2e40f29ec41266a1260746d2/summary",
  "preview_url": "https://mosson-book.local/ng/surveys/7751/public/preview"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

