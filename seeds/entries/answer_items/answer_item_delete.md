---

category_name: answer_item
title: 回答項目の削除
action: delete

---

# 回答項目の削除

## アンケートの回答項目を削除します。

`DELETE https://creativesurvey.com/api/v1/answer_items/:id`

id _(必須)_:
: __integer__
: 削除する回答項目のid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/answer_items/4321 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "question_id": 1829,
  "id": 4321,
  "max_value": null,
  "min_value": null,
  "is_reject": null,
  "validation_pattern": "^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$",
  "validation_type": null,
  "sentence": "Please enter your email",
  "placeholder": "Email",
  "order_index": 0,
  "answer_type": 5,
  "val": 0.5,
  "is_multiline": false,
  "is_impression": true,
  "is_required": true
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

