---

category_name: egression
title: 最終画面の取得
priority: 999

---

# 最終画面の取得

## 最終画面の取得について

auth_token*:
: __string__
: 認証時に必要なトークンです。

egression_id*:
: __integer__
: 取得する最終画面のid

~~~
定義
GET https://creativesurvey.com/api/v1/egressions

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/egressions/507 \
-d "auth_token=KRXJUq7yxjT18VqpoTKp"

レスポンス例
{
  "updated_at": "2014-04-21T23:30:05+09:00",
  "sentence": null,
  "rendered_sentence": "最終質問",
  "created_at": "2014-04-21T19:27:26+09:00",
  "description": "",
  "id": 507,
  "inbox_id": 6,
  "is_redirect": true,
  "question_type": 1,
  "questionnaire_id": 507,
  "redirect_url": "https://creativesurvey.com"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
