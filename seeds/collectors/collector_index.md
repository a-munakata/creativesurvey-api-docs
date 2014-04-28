---

category_name: collector
title: 公開設定一覧の取得
priority: 999

---

# 公開設定一覧の取得

## 公開設定の一覧を取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 対象となるアンケートのid
 
~~~
定義
POST https://creativesurvey.com/api/v1/surveys/:survey_id/collectors

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/surveys/520/collectors \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "updated_at": "2014-04-23T16:58:56+09:00",
    "is_compact": null,
    "is_answer_limit": false,
    "is_activated": false,
    "inbox_id": 6,
    "id": 527,
    "export_at": null,
    "end_at": "2014-04-23T16:58:56+09:00",
    "due": null,
    "allow_billboard": false,
    "answer_limit": null,
    "ban_mobile": false,
    "can_return": false,
    "completed_panels_count": 0,
    "created_at": "2014-04-23T12:41:58+09:00",
    "description": null,
    "disallow_duplicate_machine": false,
    "is_due": false,
    "is_mail": false,
    "is_ogp": false,
    "is_password": false,
    "is_result": false,
    "name": "公開設定",
    "og_description": "",
    "og_image": {
      "square": {
        "url": null
      },
      "thumb": {
        "url": null
      },
      "url": null
    },
    "og_title": "",
    "panels_count": 7,
    "password": "",
    "request_billboard": false,
    "start_at": "2014-04-23T15:30:45+09:00",
    "survey_id": 520,
    "sync_url": "",
    "unique_id": "84bb57911b251458463fe639e5010e"
  }
]

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

　
　
