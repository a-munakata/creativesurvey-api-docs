---

category_name: sub_item
title: 回答補助項目一覧の取得
action: index
parent_klass: question

---

# 回答補助項目一覧の取得

## [質問(question)](#question)の回答補助項目一覧を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/sub_items`

id _(必須)_:
: __integer__
: 取得したい回答補助項目を含む質問のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/5421/sub_items \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "answer_type": 11,
    "attachable_id": 5421,
    "attachable_type": "Question",
    "created_at": "2014-11-05T15:15:22+09:00",
    "id": 8795,
    "inbox_id": 6,
    "max_value": null,
    "min_value": null,
    "order_index": 0,
    "placeholder": "",
    "sentence": "北海道",
    "updated_at": "2014-11-05T15:16:00+09:00",
    "name": "北海道"
  },
  {...},
  {...}
]  

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
