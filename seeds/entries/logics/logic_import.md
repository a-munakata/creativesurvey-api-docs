---

category_name: logic
title: 複数の分岐設定を一括更新
action: import

---

# 複数の分岐設定を一括更新

## 複数の分岐設定を一括で更新します。

`PUT https://creativesurvey.com/api/v1/questions/:id/logics/import`

id _(必須)_:
: __integer__
: 対象の質問id

logics:
: 分岐設定の配列をパラメータとして渡します。
: {logics: [{logic_params}, {...}, {...}]}
: 分岐設定オブジェクトの中には、[分岐アイテム](#logic_item)と[分岐アクション](#logic_action)も含めて設定する事が可能です。


##### 例ではjsonを渡しています。この場合、auth_tokenを-dオプションで渡すと、auth_tokenパラメータがquestionsパラメータに含まれてしまい、JSONがうまくパースされません。jsonでパラメータを渡す場合は-uオプションを使ってauth_tokenを渡す事で、正しくパラメータが解釈されます。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/questions/5892/logics/import \
-u "sample_auth_token": \
-H "Content-Type: application/json" \
-d '{"logics": [{"id": 771, "logic_action": { "message": "skipped to A"}}, {"id": 772, "logic_action": {"message": "skipped to B"}}]}'


レスポンス例
[
  {
    "answer_id": null,
    "answer_item_id": null,
    "created_at": "2014-12-10T15:28:20+09:00",
    "destination_id": null,
    "destination_index": null,
    "id": 771,
    "inbox_id": 6,
    "is_valid": true,
    "order_index": 0,
    "question_id": 5892,
    "updated_at": "2014-12-10T15:28:20+09:00",
    "logic_action": {
      "action_type": null,
      "created_at": "2014-12-10T15:28:20+09:00",
      "id": 773,
      "inbox_id": 6,
      "logic_id": 771,
      "message": "skipped to A",
      "question_id": 5893,
      "updated_at": "2014-12-10T15:32:49+09:00"
    },
    "logic_items": [
      {
        "answer_item_id": 10995,
        "condition": "==",
        "created_at": "2014-12-10T15:28:21+09:00",
        "id": 621,
        "inbox_id": 6,
        "logic_id": 771,
        "order_index": 0,
        "question_id": 5892,
        "sub_item_id": null,
        "updated_at": "2014-12-10T15:28:33+09:00"
      }
    ]
  },
  {
    "answer_id": null,
    "answer_item_id": null,
    "created_at": "2014-12-10T15:28:53+09:00",
    "destination_id": null,
    "destination_index": null,
    "id": 772,
    "inbox_id": 6,
    "is_valid": true,
    "order_index": 1,
    "question_id": 5892,
    "updated_at": "2014-12-10T15:29:07+09:00",
    "logic_action": {
      "action_type": null,
      "created_at": "2014-12-10T15:28:53+09:00",
      "id": 774,
      "inbox_id": 6,
      "logic_id": 772,
      "message": "skipped to B",
      "question_id": 5894,
      "updated_at": "2014-12-10T15:32:49+09:00"
    },
    "logic_items": [
      {
        "answer_item_id": 10996,
        "condition": "==",
        "created_at": "2014-12-10T15:28:55+09:00",
        "id": 623,
        "inbox_id": 6,
        "logic_id": 772,
        "order_index": 0,
        "question_id": 5892,
        "sub_item_id": null,
        "updated_at": "2014-12-10T15:29:07+09:00"
      }
    ]
  }
]
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

