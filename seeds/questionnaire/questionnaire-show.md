---

category_name: questionnaire
title: 質問表の取得
priority: 999

---

# 質問表の取得

## 質問表の取得は、一覧を取得する方法とidを指定して1つの質問表を取得する事が出来ます。

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 取得する質問表を持つアンケートのid


questionnaire_id:
: __integer__
: 取得する質問表のid

~~~
定義
GET https://creativesurvey.com/api/v1/surveys/:survey_id/questionnaires

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/surveys/513/questionnaires \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "updated_at": "2014-04-16T20:48:22+09:00",
    "survey_id": 513,
    "questions_count": 2,
    "inbox_id": 6,
    "id": 504,
    "current_order": 0,
    "created_at": "2014-04-16T20:48:22+09:00",
    "characters": null
  }
]
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

