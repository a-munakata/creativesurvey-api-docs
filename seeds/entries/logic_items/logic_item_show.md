---

category_name: logic_item
title: 分岐アイテムの取得
method: show

---

# 分岐アイテムの取得

## 分岐アイテムを個別に取得します。

`GET https://creativesurvey.com/api/v1/logic_items/:id`

id _(必須)_:
: __integer__
: 取得する分岐アイテムのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/logic_items/98 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "logic_id": 139,
  "id": 98,
  "question_id": 1875,
  "order_index": 0,
  "condition": "==",
  "sub_item_id": null,
  "answer_item_id": 4409
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

