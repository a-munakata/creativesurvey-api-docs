---

category_name: visibility_item
title: 表示アイテムの削除
method: delete

---

# 表示アイテムの削除

## 表示アイテムを削除します。

`DELETE https://creativesurvey.com/api/v1/visibility_items/:visibility_item_id`

id _(必須)_:
: __integer__
: 削除する表示アイテムのid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/visibility_items/102 \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "visibility_id": 71,
  "id": 102,
  "question_id": 1916,
  "order_index": 3,
  "condition": "!=",
  "sub_item_id": null,
  "answer_item_id": 4493
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

