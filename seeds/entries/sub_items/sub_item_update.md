---

category_name: sub_item
title: 回答補助項目の更新
method: update

---

# 回答補助項目の更新

## 回答項目の補助項目を更新します。

`PUT https://creativesurvey.com/api/v1/sub_items/:id`

id _(必須)_:
: __integer__
: 更新する回答項目を含む質問のid

sentence:
: __string__ _(デフォルト: "")_
: 回答項目の文言

order_index:
: __integer__ _(デフォルト: 0)_
: 回答補助項目の順序を0から始まる整数で指定します。

min_value:
: __integer__ _(デフォルト: null)_
: 回答項目の最小選択数

max_value:
: __integer__ _(デフォルト: null)_
: 回答項目の最大選択数

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/sub_items/2865 \
-d "auth_token=YourAuthToken" \
-d "sub_item[order_index]=3" \
-d "sub_item[sentence]=new_text"


レスポンス例
{
  "id": 2865,
  "max_value": null,
  "min_value": null,
  "order_index": 3,
  "answer_type": 19,
  "placeholder": "insert text here",
  "sentence": "new_text"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

