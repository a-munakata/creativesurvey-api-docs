---

category_name: collector
title: 公開設定の公開
priority: 994

---

# 公開設定の公開

## 公開したいアンケートの公開設定を公開します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

collector_id*:
: __integer__
: 公開設定id 
 
~~~
定義
POST https://creativesurvey.com/api/v1/collectors/:collector_id/publish

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/collectors/527/publish \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T17:09:29+09:00",
  "is_answer_limit": false,
  "is_activated": true,
  "inbox_id": 6,
  "id": 529,
  "due": null,
  "answer_limit": null,
  "ban_mobile": false,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-04-23T17:09:29+09:00",
  "disallow_duplicate_machine": false,
  "is_due": false,
  "is_mail": false,
  "is_ogp": false,
  "is_password": false,
  "name": "公開設定2",
  "og_description": null,
  "og_image": {
    "square": {
      "url": null
    },
    "thumb": {
      "url": null
    },
    "url": null
  },
  "og_title": null,
  "panels_count": 0,
  "password": null,
  "request_billboard": null,
  "survey_id": 520,
  "sync_url": null
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

　
　
