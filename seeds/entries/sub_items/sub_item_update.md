---

category_name: sub_item
title: 回答補助項目の更新
action: update

---

# 回答補助項目の更新

## 回答項目の補助項目を更新します。

`PUT https://creativesurvey.com/api/v1/sub_items/:id`

id _(必須)_:
: __integer__
: 更新する回答項目を含む質問のid

sentence:
: __string__ _(デフォルト: "")_
: 回答項目の文言

order_index:
: __integer__ _(デフォルト: 0)_
: 回答補助項目の順序を0から始まる整数で指定します。

min_value:
: __integer__ _(デフォルト: null)_
: 回答項目の最小選択数

max_value:
: __integer__ _(デフォルト: null)_
: 回答項目の最大選択数

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/sub_items/8805 \
-d "auth_token=sample_auth_token" \
-d "sub_item[order_index]=3" \
-d "sub_item[sentence]=new_text"

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
  "order_index": 3,
  "placeholder": "",
  "sentence": "new_text",
  "updated_at": "2014-11-05T15:22:48+09:00",
  "name": "new_text",
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

