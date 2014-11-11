---

category_name: visibility_item
title: 表示アイテム一覧の取得
action: index

---

# 表示アイテム一覧の取得

## 表示アイテム一覧を取得します。

`GET https://creativesurvey.com/api/v1/visibilities/:id/visibility_items`

id _(必須)_:
: __integer__
: 取得する表示アイテムを含む表示ロジックのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/576/visibility_items \
-d "auth_token=sample_auth_token"

レスポンス例
[
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

