---

category_name: visibility_target
title: 表示ターゲットの取得
method: show

---

# 表示ターゲットの取得

## 表示ターゲットを個別で取得します。

visibility_target_id _(必須)_:
: __integer__
: 取得する表示ターゲットのid

~~~
定義
GET https://creativesurvey.com/api/v1/visibility_targets/:visibility_target_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibility_targets/82 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "visibility_id": 71,
  "id": 82,
  "answer_item_id": 4494
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

