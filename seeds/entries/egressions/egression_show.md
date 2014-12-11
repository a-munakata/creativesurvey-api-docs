---

category_name: egression
title: 最終画面の取得
action: show

---

# 最終画面の取得

## 最終画面を取得します。


`GET https://creativesurvey.com/api/v1/egressions/:id`

id _(必須)_:
: __integer__
: 取得する最終画面のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/egressions/520 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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
