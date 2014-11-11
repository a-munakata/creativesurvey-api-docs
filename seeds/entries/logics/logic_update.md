---

category_name: logic
title: 分岐設定の更新
action: update

---

# 分岐設定の更新

## 分岐設定を更新します。

`PUT https://creativesurvey.com/api/v1/api/v1/logics/:id`

id _(必須)_:
: __integer__
: 更新する分岐設定のid

order_index:
: __integer__ _(デフォルト: 0)_
: 分岐設定の順序
: 0から始まる整数で指定します。

is_valid:
: __boolean__ _(デフォルト: true)_
: 有効かどうか

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/logics/749 \
-d "auth_token=sample_auth_token" \
-d "logic[order_index]=3"

レスポンス例
{
  "answer_id": null,
  "answer_item_id": null,
  "created_at": "2014-11-05T17:13:29+09:00",
  "destination_id": null,
  "destination_index": null,
  "id": 749,
  "inbox_id": 6,
  "is_valid": true,
  "order_index": 3,
  "question_id": 5428,
  "updated_at": "2014-11-05T17:22:22+09:00",
  "logic_action": {
    "action_type": null,
    "created_at": "2014-11-05T17:13:30+09:00",
    "id": 751,
    "inbox_id": 6,
    "logic_id": 749,
    "message": "A",
    "question_id": 5426,
    "updated_at": "2014-11-05T17:13:53+09:00"
  },
  "logic_items": [
    {
      "answer_item_id": 10146,
      "condition": "==",
      "created_at": "2014-11-05T17:13:31+09:00",
      "id": 603,
      "inbox_id": 6,
      "logic_id": 749,
      "order_index": 0,
      "question_id": 5428,
      "sub_item_id": null,
      "updated_at": "2014-11-05T17:13:53+09:00"
    }
  ]
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

