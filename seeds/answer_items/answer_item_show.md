---

category_name: answer_item
title: 回答項目の取得
priority: 999

---

# 回答項目の取得

## アンケートの回答項目を個別に取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

answer_item_id*:
: __integer__
: 取得する回答項目のid

~~~
定義
GET https://creativesurvey.com/api/v1/answer_items/:answer_item_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/answer_items/4321 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "validation_type": null,
  "validation_pattern": "\\d{3}-?\\d{4}",
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
  "placeholder": "Address",
  "question_id": 1838,
  "sentence": "Please enter your address",
  "updated_at": "2014-04-22T19:30:40+09:00",
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

