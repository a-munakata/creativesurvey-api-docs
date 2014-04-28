---

category_name: collector
title: 公開設定の取得
priority: 999

---

# 公開設定の取得

## 公開設定を個別に取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

collector_id*:
: __integer__
: 対象となるアンケートのid
 
~~~
定義
POST https://creativesurvey.com/api/v1/collectors/:collector_id

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/collectors/529 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T17:09:29+09:00",
  "is_compact": null,
  "is_answer_limit": false,
  "is_activated": false,
  "inbox_id": 6,
  "id": 529,
  "export_at": null,
  "end_at": null,
  "due": null,
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": null,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-04-23T17:09:29+09:00",
  "description": null,
  "disallow_duplicate_machine": false,
  "is_due": false,
  "is_mail": false,
  "is_ogp": null,
  "is_password": false,
  "is_result": false,
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
  "start_at": null,
  "survey_id": 520,
  "sync_url": null,
  "unique_id": "2437083d76a3bffba6c76ea885141b"
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

　
　
