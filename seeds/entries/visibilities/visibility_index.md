---

category_name: visibility
title: 表示ロジック一覧の取得
method: index

---

# 表示ロジック一覧の取得

## 表示ロジック一覧を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/visibilities`

id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/1911/visibilities \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
    "question_id": 1911,
    "id": 62,
    "order_index": 0
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

