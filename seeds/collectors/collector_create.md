---

category_name: collector
title: 公開設定の作成
priority: 999

---

# 公開設定の作成

## 公開設定の作成

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 対象となるアンケートのid

name*:
: __string__
: 公開設定の名前
 
~~~
定義
POST https://creativesurvey.com/api/v1/surveys/:survey_id/collectors

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/surveys/520/collectors \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "collector[name]=公開設定2"

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

必須項目が入力されていない場合
{
  "name": [
    "を入力してください。"
  ]
}
~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
