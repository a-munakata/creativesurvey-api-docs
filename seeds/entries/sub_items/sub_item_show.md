---

category_name: sub_item
title: 回答補助項目の取得
method: show

---

# 回答補助項目の取得

## 回答項目の補助項目を取得します。

`GET https://creativesurvey.com/api/v1/sub_items/:id`

id _(必須)_:
: __integer__
: 取得する回答補助項目のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/sub_items/2865 \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "id": 2865,
  "max_value": null,
  "min_value": null,
  "order_index": 0,
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

