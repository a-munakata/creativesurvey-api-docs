---

category_name: visibility_target
title: 表示ターゲット一覧の取得
action: index

---

# 表示ターゲット一覧の取得

## 表示ターゲット一覧を取得します。

`GET https://creativesurvey.com/api/v1/visibilities/:id/visibility_targets`

id _(必須)_:
: __integer__
: 取得する表示ターゲットを含む表示ロジックのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/71/visibility_targets \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "visibility_id": 71,
    "id": 82,
    "answer_item_id": 4494
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

