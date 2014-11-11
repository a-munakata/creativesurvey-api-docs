---

category_name: collector
title: 公開設定一覧の取得
action: index

---

# 公開設定一覧の取得

## 公開設定の一覧を取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/collectors`

id _(必須)_:
: __integer__
: 対象となるアンケートのid
 
~~~

リクエスト例
$ curl -X GET \
https://creativesurvey.com/api/v1/surveys/7711/collectors \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "allow_billboard": false,
    "answer_limit": null,
    "ban_mobile": null,
    "can_return": false,
    "completed_panels_count": 0,
    "created_at": "2014-10-24T13:14:27+09:00",
    "description": null,
    "disallow_custom_key": false,
    "disallow_duplicate_in": null,
    "disallow_duplicate_machine": false,
    "disallow_free_enter": null,
    "due": null,
    "end_at": null,
    "export_at": null,
    "gtm_id": null,
    "id": 8587,
    "inbox_id": 6,
    "ip_pattern": null,
    "is_activated": false,
    "is_answer_limit": false,
    "is_compact": null,
    "is_due": false,
    "is_gtm": null,
    "is_ip_restriction": null,
    "is_mail": false,
    "is_ogp": null,
    "is_password": false,
    "is_result": false,
    "is_sync": null,
    "is_track_gps": null,
    "name": "Untitled",
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
    "password": null,
    "request_billboard": null,
    "start_at": null,
    "survey_id": 7711,
    "sync_url": null,
    "unique_id": "eea1dac25d592d73ff56fbf73cc20b",
    "updated_at": "2014-10-24T13:14:27+09:00",
    "url": "https://mosson-book.local/ng/reply/eea1dac25d592d73ff56fbf73cc20b",
    "status": "edit",
    "embed": "<div style=\"position:relative;padding-bottom: 120%;height:0;\"><iframe style=\"position:absolute;top:0px;left:0px;width:100%;height:100%;\" src=\"https://mosson-book.local/ng/reply/eea1dac25d592d73ff56fbf73cc20b\"></iframe></div>"
  },
  {...},
  {...}
]

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
