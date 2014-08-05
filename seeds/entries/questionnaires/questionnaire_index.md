---

category_name: questionnaire
title: 質問票一覧の取得
action: index

---

# 質問票一覧の取得

## 質問票を一覧で取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/questionnaires`

id _(必須)_:
: __integer__
: 該当のアンケートのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/651/questionnaires \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "survey_id": 651,
    "created_at": "2014-06-03T19:45:16+09:00",
    "updated_at": "2014-06-03T19:45:16+09:00",
    "id": 641
  }
]
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

