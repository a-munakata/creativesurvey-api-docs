---

category_name: egression
title: 最終画面の取得
method: show

---

# 最終画面の取得

## 最終画面を取得します。

`GET https://creativesurvey.com/api/v1/egressions/:egression_id`

id _(必須)_:
: __integer__
: 取得する最終画面のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/egressions/520 \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "questionnaire_id": 520,
  "id": 520,
  "question_type": 1,
  "description": "",
  "rendered_sentence": "回答ありがとうございました。",
  "sentence": null,
  "redirect_url": "https://creativesurvey.com",
  "is_redirect": true
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
