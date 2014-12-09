---

category_name: answer_item
title: 回答項目一覧の取得
action: index

---

# 回答項目一覧の取得

## アンケートの回答項目一覧を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/answer_items`

id _(必須)_:
: __integer__
: 取得する回答項目を含む質問のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/5421/answer_items \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "answer_type": 11,
    "created_at": "2014-11-05T15:15:22+09:00",
    "id": 10124,
    "inbox_id": 6,
    "is_impression": true,
    "is_multiline": false,
    "is_reject": null,
    "is_required": false,
    "max_value": null,
    "min_value": null,
    "order_index": 0,
    "placeholder": "",
    "question_id": 5421,
    "sentence": "〜19歳",
    "updated_at": "2014-11-05T15:16:00+09:00",
    "val": 0.5,
    "validation_pattern": "",
    "validation_type": null,
    "name": "〜19歳"
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

