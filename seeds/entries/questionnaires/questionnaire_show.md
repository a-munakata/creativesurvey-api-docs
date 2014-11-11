---

category_name: questionnaire
title: 質問票の取得
action: show

---

# 質問票の取得

## 質問票を取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/questionnaire`

id _(必須)_:
: __integer__
: 取得する質問票のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7711/questionnaire \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "characters": null,
  "created_at": "2014-10-24T13:14:26+09:00",
  "current_order": 0,
  "id": 7698,
  "inbox_id": 6,
  "questions_count": 6,
  "survey_id": 7711,
  "updated_at": "2014-10-24T13:14:26+09:00",
  "generate_order": [
    [
      5188
    ],
    [
      5302
    ],
    [
      5187
    ]
  ],
  "random_region": [
    5188,
    5189,
    5190,
    5191
  ]
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

