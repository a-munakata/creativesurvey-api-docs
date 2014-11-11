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
$ curl -X GET https://creativesurvey.com/api/v1/visibility_items/401 \
-d "auth_token=sample_auth_token"

レスポンス例
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

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

