---

category_name: logic_item
title: 分岐アイテム一覧の取得
method: index

---

# 分岐アイテム一覧の取得

## 分岐アイテム一覧を取得します。

`GET https://creativesurvey.com/api/v1/logics/:id/logic_items`

id _(必須)_:
: __integer__
: 取得する分岐アイテムを含む分岐設定のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/logics/139/logic_items \
-d "auth_token=YourAuthToken"
レスポンス例
[
  {
    "logic_id": 139,
    "id": 98,
    "question_id": 1875,
    "order_index": 0,
    "condition": "==",
    "sub_item_id": null,
    "answer_item_id": 4409
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

