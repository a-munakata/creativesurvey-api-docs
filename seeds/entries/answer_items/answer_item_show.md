---

category_name: answer_item
title: 回答項目の取得
method: show

---

# 回答項目の取得

## アンケートの回答項目を個別に取得します。

answer_item_id _(必須)_:
: __integer__
: 取得する回答項目のid

~~~
定義
GET https://creativesurvey.com/api/v1/answer_items/:answer_item_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/answer_items/4301 \
-u "auth_token=YourAuthToken":

レスポンス例
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
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

