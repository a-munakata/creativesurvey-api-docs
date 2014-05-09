---

category_name: collector
title: 公開設定の公開中止
priority: 993

---

# 公開設定の公開中止

## 公開設定の公開を中止します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

collector_id*:
: __integer__
: 公開設定のid 
 
~~~
定義
POST https://creativesurvey.com/api/v1/collectors/:collector_id/abort

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/collectors/547/abort \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-05-08T19:23:28+09:00",
  "is_compact": null,
  "is_answer_limit": false,
  "is_activated": false,
  "inbox_id": 6,
  "id": 547,
  "export_at": null,
  "end_at": null,
  "due": null,
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": true,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-05-08T19:14:47+09:00",
  "description": null,
  "disallow_duplicate_machine": false,
  "is_due": false,
  "is_mail": true,
  "is_ogp": true,
  "is_password": true,
  "is_result": false,
  "name": "公開設定3",
  "og_description": "sample",
  "og_image": {
    "square": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/547/square_red.gif"
    },
    "thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/547/thumb_red.gif"
    },
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/547/red.gif"
  },
  "og_title": "creativesurvey",
  "panels_count": 0,
  "password": "sample_pass",
  "request_billboard": null,
  "start_at": "2014-05-08T19:21:55+09:00",
  "survey_id": 520,
  "sync_url": null,
  "unique_id": "0a7a83043678b983d1c8b73038bc3a"
}

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
