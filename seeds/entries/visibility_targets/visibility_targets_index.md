---

category_name: visibility_target
title: 表示ターゲット一覧の取得
method: index

---

# 表示ターゲット一覧の取得

## 表示ターゲット一覧を取得します。

visibility_id _(必須)_:
: __integer__
: 取得する表示ターゲットを含む表示ロジックのid

~~~
定義
GET https://creativesurvey.com/api/v1/visibilities/:visibility_id/visibility_targets

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/71/visibility_targets \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "visibility_id": 71,
    "id": 82,
    "answer_item_id": 4494
  },
  {...},
  {...}
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

