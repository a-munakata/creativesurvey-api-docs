---

category_name: collector
title: 公開設定一覧の取得
method: index

---

# 公開設定一覧の取得

## 公開設定の一覧を取得します。

survey_id _(必須)_:
: __integer__
: 対象となるアンケートのid
 
~~~
定義
GET https://creativesurvey.com/api/v1/surveys/:survey_id/collectors

リクエスト例
$ curl -X GET \
https://creativesurvey.com/api/v1/surveys/520/collectors \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "survey_id": 520,
    "id": 527,
    "is_activated": false,
    "og_image": null,
    "og_description": "",
    "og_title": "",
    "answer_limit": null,
    "is_answer_limit": false,
    "due": null,
    "is_due": false,
    "password": "",
    "is_password": false,
    "name": "公開設定",
    "description": null,
    "can_return": false,
    "is_mail": false,
    "is_compact": null,
    "ban_mobile": false,
    "disallow_duplicate_machine": false,
    "request_billboard": false,
    "is_result": false,
    "is_ogp": false
  },
  {...},
  {...}
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

　
　
