---

category_name: sub_item
title: 回答補助項目の削除
method: delete

---

# 回答補助項目の削除

## 回答項目の補助項目を削除します。

sub_item_id _(必須)_:
: __integer__
: 削除する回答補助項目のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/sub_items/:sub_item_id

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/sub_items/2865 \
-d "auth_token=YourAuthToken"

レスポンス例
{
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

