---

category_name: collector
title: 公開設定のog:imageのアップロード
action: image

---

# 公開設定のog:imgeのアップロード

## 公開設定のog:imageをアップロードします。

`POST https://creativesurvey.com/api/v1/collectors/:id/image`

id _(必須)_:
: __integer__
: 対象となる公開設定のid

file:
: __string__
: og:imageに使用するファイルを指定します。
 
~~~

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/collectors/8587/image \
-F "auth_token=sample_auth_token" \
-F "file=@/Users/4dusers/Desktop/sample.png"

レスポンス例
{
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": null,
  "can_return": false,
  "completed_panels_count": 5,
  "created_at": "2014-12-10T16:15:35+09:00",
  "description": null,
  "disallow_custom_key": false,
  "disallow_duplicate_in": null,
  "disallow_duplicate_machine": false,
  "disallow_free_enter": null,
  "due": null,
  "end_at": null,
  "export_at": null,
  "gtm_id": null,
  "id": 8778,
  "inbox_id": 6,
  "ip_pattern": null,
  "is_activated": true,
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
  "last_panel_id": null,
  "name": "公開設定",
  "og_description": null,
  "og_image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/8778/sample.png",
    "thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/8778/thumb_sample.png"
    },
    "square": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/8778/square_sample.png"
    }
  },
  "og_title": null,
  "panels_count": 6,
  "password": null,
  "request_billboard": null,
  "start_at": "2014-12-10T16:16:58+09:00",
  "survey_id": 7899,
  "sync_url": null,
  "unique_id": "96e6dcd6491e63937927af8a92b907",
  "updated_at": "2014-12-10T22:39:22+09:00",
  "url": "https://creativesurvey.com/ng/reply/96e6dcd6491e63937927af8a92b907",
  "status": "play",
  "embed": "<div style=\"position:relative;padding-bottom: 120%;height:0;\"><iframe style=\"position:absolute;top:0px;left:0px;width:100%;height:100%;\" src=\"https://creativesurvey.com/ng/reply/96e6dcd6491e63937927af8a92b907\"></iframe></div>",
  "segment_id": null
}

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
