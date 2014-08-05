---

category_name: logic
title: 分岐設定一覧の取得
action: index

---

# 分岐設定一覧の取得

## 分岐設定一覧を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/logics`

id _(必須)_:
: __integer__
: 対象の質問id

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/1825/logics \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "question_id": 1825,
    "id": 138,
    "order_index": 0,
    "is_valid": true,
    "destination_id": null,
    "answer_item_id": null
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

