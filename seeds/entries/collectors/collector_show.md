---

category_name: collector
title: 公開設定の取得
action: show

---

# 公開設定の取得

## 公開設定を個別に取得します。

`GET https://creativesurvey.com/api/v1/collectors/:id`

id _(必須)_:
: __integer__
: 対象となる公開設定のid
 
~~~

リクエスト例
$ curl -X GET \
https://creativesurvey.com/api/v1/collectors/547 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "url": "https://creativesurvey.com/reply/:sample_unique_id",
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "survey_id": 520,
  "id": 547,
  "is_activated": false,
  "og_image": "red.gif",
  "og_description": "sample",
  "og_title": "creativesurvey",
  "answer_limit": null,
  "is_answer_limit": false,
  "due": null,
  "is_due": false,
  "password": "sample_pass",
  "is_password": true,
  "name": "公開設定3",
  "description": null,
  "can_return": false,
  "is_mail": true,
  "is_compact": null,
  "ban_mobile": true,
  "disallow_duplicate_machine": false,
  "request_billboard": null,
  "is_result": false,
  "is_ogp": true
}

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
