---

category_name: visibility
title: 表示ロジック一覧の取得
action: index

---

# 表示ロジック一覧の取得

## 表示ロジック一覧を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/visibilities`

id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/5189/visibilities \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "created_at": "2014-10-31T19:31:36+09:00",
    "id": 576,
    "inbox_id": 6,
    "order_index": 0,
    "question_id": 5189,
    "updated_at": "2014-10-31T19:31:53+09:00",
    "visibility_items": [
      {
        "answer_item_id": 9681,
        "condition": "==",
        "created_at": "2014-10-31T19:31:37+09:00",
        "id": 401,
        "inbox_id": 6,
        "order_index": null,
        "question_id": 5188,
        "sub_item_id": null,
        "updated_at": "2014-10-31T19:31:52+09:00",
        "visibility_id": 576
      }
    ],
    "visibility_targets": [
      {
        "answer_item_id": 9682,
        "created_at": "2014-10-31T19:31:36+09:00",
        "id": 861,
        "inbox_id": 6,
        "updated_at": "2014-10-31T19:31:53+09:00",
        "visibility_id": 576
      }
    ]
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

