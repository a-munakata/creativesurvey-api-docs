---

category_name: sub_item
title: 回答補助項目の取得
action: show

---

# 回答補助項目の取得

## 回答項目の補助項目を取得します。

`GET https://creativesurvey.com/api/v1/sub_items/:id`

id _(必須)_:
: __integer__
: 取得する回答補助項目のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/sub_items/8805 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_type": 11,
  "attachable_id": 5421,
  "attachable_type": "Question",
  "created_at": "2014-11-05T15:15:57+09:00",
  "id": 8805,
  "inbox_id": 6,
  "max_value": null,
  "min_value": null,
  "order_index": 10,
  "placeholder": "",
  "sentence": "埼玉県",
  "updated_at": "2014-11-05T15:16:01+09:00",
  "name": "埼玉県",
  "creative_chain": {
    "attachable_id": 8805,
    "attachable_type": "SubItem",
    "created_at": "2014-11-05T15:15:57+09:00",
    "creative_id": null,
    "id": 32073,
    "inbox_id": 6,
    "updated_at": "2014-11-05T15:15:57+09:00"
  }
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

