---

category_name: collector
title: 公開設定の取得
action: show

---

# 公開設定の取得

## 公開設定を個別に取得します。

`GET https://creativesurvey.com/api/v1/collectors/:id`

id _(必須)_:
: __integer__
: 対象となる公開設定のid
 
~~~

リクエスト例
$ curl -X GET \
https://creativesurvey.com/api/v1/collectors/8587 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": true,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-10-24T13:14:27+09:00",
  "description": null,
  "disallow_custom_key": false,
  "disallow_duplicate_in": null,
  "disallow_duplicate_machine": false,
  "disallow_free_enter": null,
  "due": "2014-11-01T12:38:43+09:00",
  "end_at": null,
  "export_at": null,
  "gtm_id": null,
  "id": 8587,
  "inbox_id": 6,
  "ip_pattern": null,
  "is_activated": false,
  "is_answer_limit": false,
  "is_compact": null,
  "is_due": true,
  "is_gtm": null,
  "is_ip_restriction": null,
  "is_mail": true,
  "is_ogp": null,
  "is_password": true,
  "is_result": false,
  "is_sync": true,
  "is_track_gps": null,
  "name": "公開設定3",
  "og_description": null,
  "og_image": {
    "url": null,
    "thumb": {
      "url": null
    },
    "square": {
      "url": null
    }
  },
  "og_title": null,
  "panels_count": 0,
  "password": "sample_pass",
  "request_billboard": null,
  "start_at": "2014-10-31T12:47:20+09:00",
  "survey_id": 7711,
  "sync_url": "http://google.com",
  "unique_id": "eea1dac25d592d73ff56fbf73cc20b",
  "updated_at": "2014-10-31T12:47:30+09:00",
  "url": "https://mosson-book.local/ng/reply/eea1dac25d592d73ff56fbf73cc20b",
  "status": "pause",
  "embed": "<div style=\"position:relative;padding-bottom: 120%;height:0;\"><iframe style=\"position:absolute;top:0px;left:0px;width:100%;height:100%;\" src=\"https://mosson-book.local/ng/reply/eea1dac25d592d73ff56fbf73cc20b\"></iframe></div>"
}

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
