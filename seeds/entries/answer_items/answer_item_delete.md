---

category_name: answer_item
title: 回答項目の削除
method: delete

---

# 回答項目の削除

## アンケートの回答項目を削除します。

answer_item_id _(必須)_:
: __integer__
: 削除する回答項目のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/answer_items/:answer_item_id

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/answer_items/4321 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "question_id": 1829,
  "id": 4321,
  "max_value": null,
  "min_value": null,
  "is_reject": null,
  "validation_pattern": "^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$",
  "validation_type": null,
  "sentence": "Please enter your email",
  "placeholder": "Email",
  "order_index": 0,
  "answer_type": 5,
  "val": 0.5,
  "is_multiline": false,
  "is_impression": true,
  "is_required": true
}

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

