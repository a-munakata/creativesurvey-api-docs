---

category_name: collector
title: 公開設定の複製
action: copy

---

# 公開設定の複製

## 公開設定を複製します。

`POST https://creativesurvey.com/api/v1/collectors/:id/copy`

id _(必須)_:
: __integer__
: 公開設定id 
 
~~~

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/collectors/8632/copy \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": null,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-10-31T15:24:11+09:00",
  "description": null,
  "disallow_custom_key": false,
  "disallow_duplicate_in": null,
  "disallow_duplicate_machine": false,
  "disallow_free_enter": null,
  "due": null,
  "end_at": "2014-10-31T15:22:39+09:00",
  "export_at": null,
  "gtm_id": null,
  "id": 8633,
  "inbox_id": 6,
  "ip_pattern": null,
  "is_activated": false,
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
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/sample.jpeg",
    "thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/thumb_sample.jpeg"
    },
    "square": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/square_sample.jpeg"
    }
  },
  "og_title": "creativesurvey",
  "panels_count": 0,
  "password": null,
  "request_billboard": null,
  "start_at": "2014-10-31T15:17:01+09:00",
  "survey_id": 7711,
  "sync_url": null,
  "unique_id": "32edf12083fe3a6b5c731d76b6917b",
  "updated_at": "2014-10-31T15:24:11+09:00",
  "url": "https://creativesurvey.com/ng/reply/32edf12083fe3a6b5c731d76b6917b",
  "status": "pause",
  "embed": "<div style=\"position:relative;padding-bottom: 120%;height:0;\"><iframe style=\"position:absolute;top:0px;left:0px;width:100%;height:100%;\" src=\"https://creativesurvey.com/ng/reply/32edf12083fe3a6b5c731d76b6917b\"></iframe></div>"
}

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
