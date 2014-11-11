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
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/572/visibility_targets \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "answer_item_id": 9682,
    "created_at": "2014-10-31T19:31:36+09:00",
    "id": 861,
    "inbox_id": 6,
    "updated_at": "2014-10-31T19:31:53+09:00",
    "visibility_id": 576
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

