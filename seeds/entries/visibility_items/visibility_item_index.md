---

category_name: visibility_item
title: 表示アイテム一覧の取得
method: index

---

# 表示アイテム一覧の取得

## 表示アイテム一覧を取得します。

`GET https://creativesurvey.com/api/v1/visibilities/:id/visibility_items`

id _(必須)_:
: __integer__
: 取得する表示アイテムを含む表示ロジックのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/71/visibility_items \
-d "auth_token=YourAuthToken"
レスポンス例
[
  {
    "visibility_id": 71,
    "id": 102,
    "question_id": 1915,
    "order_index": 0,
    "condition": "==",
    "sub_item_id": null,
    "answer_item_id": 4493
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

