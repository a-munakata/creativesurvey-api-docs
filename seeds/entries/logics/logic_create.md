---

category_name: logic
title: 分岐設定の作成
action: create

---

# 分岐設定の作成

## 分岐設定を作成します。

`POST https://creativesurvey.com/api/v1/questions/:id/logics`

id _(必須)_:
: __integer__
: 対象の質問id

order_index:
: __integer__ _(デフォルト: 0)_
: 分岐設定の順序
: 0から始まる整数で指定します。

is_valid:
: __boolean__ _(デフォルト: true)_
: 有効かどうか

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/5428/logics \
-d "logic[order_index]=3" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_id": null,
  "answer_item_id": null,
  "created_at": "2014-11-05T17:25:52+09:00",
  "destination_id": null,
  "destination_index": null,
  "id": 751,
  "inbox_id": 6,
  "is_valid": true,
  "order_index": 3,
  "question_id": 5428,
  "updated_at": "2014-11-05T17:25:52+09:00",
  "logic_action": {
    "action_type": null,
    "created_at": "2014-11-05T17:25:52+09:00",
    "id": 753,
    "inbox_id": 6,
    "logic_id": 751,
    "message": null,
    "question_id": null,
    "updated_at": "2014-11-05T17:25:52+09:00"
  },
  "logic_items": []
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

