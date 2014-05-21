---

category_name: logic
title: 分岐設定一覧の取得
method: index

---

# 分岐設定一覧の取得

## 分岐設定一覧を取得します。

question_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/logics

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

