---

category_name: logic_item
title: 分岐アイテムの削除
action: delete

---

# 分岐アイテムの削除

## 分岐アイテムを削除します。

`DELETE https://creativesurvey.com/api/v1/logic_items/:id`

logic_item_id _(必須)_:
: __integer__
: 削除する分岐アイテムのid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/logic_items/615 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_item_id": 10668,
  "condition": "==",
  "created_at": "2014-11-17T14:20:14+09:00",
  "id": 615,
  "inbox_id": 6,
  "logic_id": 766,
  "order_index": 0,
  "question_id": 5722,
  "sub_item_id": null,
  "updated_at": "2014-11-17T14:20:24+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

