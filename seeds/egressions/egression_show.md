---

category_name: egression
title: 最終画面の取得
priority: 997

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
GET https://creativesurvey.com/api/v1/egressions/:egression_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/egressions/520 \
-d "auth_token=KRXJUq7yxjT18VqpoTKp"

レスポンス例
{
  "updated_at": "2014-05-08T11:58:33+09:00",
  "sentence": null,
  "rendered_sentence": "回答ありがとうございました。",
  "created_at": "2014-05-08T11:45:07+09:00",
  "description": "  ",
  "id": 520,
  "inbox_id": 6,
  "is_redirect": true,
  "question_type": 1,
  "questionnaire_id": 520,
  "redirect_url": "https://creativesurvey.com"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
