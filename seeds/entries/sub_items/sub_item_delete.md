---

category_name: sub_item
title: 回答補助項目の削除
action: delete

---

# 回答補助項目の削除

## 回答項目の補助項目を削除します。

`DELETE https://creativesurvey.com/api/v1/sub_items/:id`

id _(必須)_:
: __integer__
: 削除する回答補助項目のid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/sub_items/2865 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "id": 2865,
  "max_value": null,
  "min_value": null,
  "order_index": 3,
  "answer_type": 19,
  "placeholder": "insert text here",
  "sentence": ""
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

