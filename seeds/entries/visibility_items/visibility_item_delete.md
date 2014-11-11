---

category_name: visibility_item
title: 表示アイテムの削除
action: delete

---

# 表示アイテムの削除

## 表示アイテムを削除します。

`DELETE https://creativesurvey.com/api/v1/visibility_items/:id`

id _(必須)_:
: __integer__
: 削除する表示アイテムのid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/visibility_items/402 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_item_id": 9681,
  "condition": "!=",
  "created_at": "2014-10-31T19:57:16+09:00",
  "id": 402,
  "inbox_id": 6,
  "order_index": 3,
  "question_id": 5188,
  "sub_item_id": null,
  "updated_at": "2014-10-31T19:57:16+09:00",
  "visibility_id": 576
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

