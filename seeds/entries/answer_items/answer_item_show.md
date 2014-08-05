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
$ curl -X GET https://creativesurvey.com/api/v1/answer_items/4301 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

