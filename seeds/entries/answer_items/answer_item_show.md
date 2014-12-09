---

category_name: answer_item
title: 回答項目の取得
action: show

---

# 回答項目の取得

## アンケートの回答項目を個別に取得します。

`GET https://creativesurvey.com/api/v1/answer_items/:id`

id _(必須)_:
: __integer__
: 取得する回答項目のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/answer_items/10124 \
-d "auth_token=sample_auth_token"

レスポンス例
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
  "name": "〜19歳",
  "creative_chain": {
    "attachable_id": 10124,
    "attachable_type": "AnswerItem",
    "created_at": "2014-11-05T15:15:22+09:00",
    "creative_id": null,
    "id": 32054,
    "inbox_id": 6,
    "updated_at": "2014-11-05T15:15:22+09:00"
  },
  "sub_items": []
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

