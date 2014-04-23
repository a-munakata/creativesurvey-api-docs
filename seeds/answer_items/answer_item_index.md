---

category_name: answer_item
title: 回答項目一覧の取得
priority: 999

---

# 回答項目一覧の取得

## アンケートの回答項目一覧を取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

question_id*:
: __integer__
: 取得する回答項目を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/answer_items

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questions/1829/answer_items \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "validation_type": null,
    "validation_pattern": "",
    "is_required": false,
    "is_reject": null,
    "is_multiline": false,
    "is_impression": true,
    "inbox_id": 6,
    "id": 4301,
    "created_at": "2014-04-22T17:39:40+09:00",
    "answer_type": 2,
    "max_value": null,
    "min_value": null,
    "order_index": 0,
    "placeholder": "",
    "question_id": 1829,
    "sentence": "yes",
    "updated_at": "2014-04-22T19:02:16+09:00",
    "val": 0.5
  },
  {
    "validation_type": null,
    "validation_pattern": "",
    "is_required": false,
    "is_reject": null,
    "is_multiline": false,
    "is_impression": true,
    "inbox_id": 6,
    "id": 4302,
    "created_at": "2014-04-22T17:39:40+09:00",
    "answer_type": 2,
    "max_value": null,
    "min_value": null,
    "order_index": 1,
    "placeholder": "",
    "question_id": 1829,
    "sentence": "no",
    "updated_at": "2014-04-22T19:02:16+09:00",
    "val": 0.5
  }
]

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

