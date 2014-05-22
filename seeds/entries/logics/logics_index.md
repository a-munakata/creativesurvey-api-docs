---

category_name: logic
title: 分岐設定一覧の取得
method: index

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
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
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

