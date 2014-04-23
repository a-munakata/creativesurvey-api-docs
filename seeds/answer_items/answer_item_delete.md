---

category_name: answer_item
title: 回答項目の削除
priority: 999

---

# 回答項目の削除

## アンケートの回答項目を削除します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

answer_item_id*:
: __integer__
: 削除する回答項目のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/answer_items/:answer_item_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/answer_items/4321 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "validation_type": null,
  "validation_pattern": "^([a-zA-Z0-9_\\.\\-]) \\@(([a-zA-Z0-9\\-]) \\.) ([a-zA-Z0-9]{2,4}) $",
  "is_required": true,
  "is_reject": null,
  "is_multiline": false,
  "is_impression": true,
  "inbox_id": 6,
  "id": 4321,
  "created_at": "2014-04-22T19:30:40+09:00",
  "answer_type": 5,
  "max_value": null,
  "min_value": null,
  "order_index": null,
  "placeholder": "Email",
  "question_id": 1838,
  "sentence": "Please enter your email",
  "updated_at": "2014-04-22T19:36:50+09:00",
  "val": 0.5
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

