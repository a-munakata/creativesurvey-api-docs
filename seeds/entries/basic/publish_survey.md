---

category_name: basic
title: アンケートを公開しよう
method: publish

---

# アンケートを公開しよう

## アンケートの回答項目一覧を取得します。

question_id _(必須)_:
: __integer__
: 取得する回答項目を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/answer_items

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/1829/answer_items \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
    "question_id": 1829,
    "id": 4301,
    "max_value": null,
    "min_value": null,
    "is_reject": null,
    "validation_pattern": "",
    "validation_type": null,
    "sentence": "yes",
    "placeholder": "",
    "order_index": 0,
    "answer_type": 2,
    "val": 0.5,
    "is_multiline": false,
    "is_impression": true,
    "is_required": false
  },
  {...},
  {...}
]

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

