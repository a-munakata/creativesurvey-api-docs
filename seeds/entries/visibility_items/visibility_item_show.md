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
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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

