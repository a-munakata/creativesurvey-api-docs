---

category_name: collector
title: 公開設定の公開
method: publish

---

# 公開設定の公開

## 公開したいアンケートの公開設定を公開します。

`POST https://creativesurvey.com/api/v1/collectors/:collector_id/publish`

id _(必須)_:
: __integer__
: 公開設定id 
 
~~~

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/collectors/547/publish \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "survey_id": 520,
  "id": 547,
  "is_activated": true,
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

　
　
