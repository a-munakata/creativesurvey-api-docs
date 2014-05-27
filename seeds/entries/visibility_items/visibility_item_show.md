---

category_name: visibility_item
title: 表示アイテムの取得
action: show

---

# 表示アイテムの取得

## 表示アイテムを個別に取得します。

`GET https://creativesurvey.com/api/v1/visibility_items/:id`

id _(必須)_:
: __integer__
: 取得する表示アイテムのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibility_items/102 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "visibility_id": 71,
  "id": 102,
  "question_id": 1915,
  "order_index": 0,
  "condition": "==",
  "sub_item_id": null,
  "answer_item_id": 4493
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
