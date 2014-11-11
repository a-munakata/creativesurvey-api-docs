---

category_name: collector
title: 公開設定の公開
action: publish

---

# 公開設定の公開

## 公開したいアンケートの公開設定を公開します。

`POST https://creativesurvey.com/api/v1/collectors/:id/publish`

id _(必須)_:
: __integer__
: 公開設定id 
 
~~~

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/collectors/8632/publish \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": null,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-10-31T15:11:48+09:00",
  "description": null,
  "disallow_custom_key": false,
  "disallow_duplicate_in": null,
  "disallow_duplicate_machine": false,
  "disallow_free_enter": null,
  "due": null,
  "end_at": null,
  "export_at": null,
  "gtm_id": null,
  "id": 8632,
  "inbox_id": 6,
  "ip_pattern": null,
  "is_activated": true,
  "is_answer_limit": false,
  "is_compact": null,
  "is_due": false,
  "is_gtm": null,
  "is_ip_restriction": null,
  "is_mail": false,
  "is_ogp": true,
  "is_password": false,
  "is_result": false,
  "is_sync": null,
  "is_track_gps": null,
  "name": "公開設定2",
  "og_description": "sample",
  "og_image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/8632/sample.jpeg",
    "thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/8632/thumb_sample.jpeg"
    },
    "square": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/8632/square_sample.jpeg"
    }
  },
  "og_title": "creativesurvey",
  "panels_count": 0,
  "password": null,
  "request_billboard": null,
  "start_at": "2014-10-31T15:17:01+09:00",
  "survey_id": 7711,
  "sync_url": null,
  "unique_id": "12029485ee029d42611fcb4eaa4c3e",
  "updated_at": "2014-10-31T15:17:03+09:00",
  "url": "https://mosson-book.local/ng/reply/12029485ee029d42611fcb4eaa4c3e",
  "status": "play",
  "embed": "<div style=\"position:relative;padding-bottom: 120%;height:0;\"><iframe style=\"position:absolute;top:0px;left:0px;width:100%;height:100%;\" src=\"https://mosson-book.local/ng/reply/12029485ee029d42611fcb4eaa4c3e\"></iframe></div>"
}

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
