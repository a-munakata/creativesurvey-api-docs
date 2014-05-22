---

category_name: visibility_target
title: 表示ターゲットの更新
method: update

---

# 表示ターゲットの更新

## 表示ターゲットを更新します。

`PUT https://creativesurvey.com/api/v1/visibility_targets/:id`

id _(必須)_:
: __integer__
: 更新する表示ターゲットのid

answer_item_id:
: __integer__ _(デフォルト: null)_
: 非表示にする回答項目のidを指定します。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/visibility_targets/82 \
-u "auth_token=YourAuthToken": \
-d "visibility_target[answer_item_id]=4495"

レスポンス例
{
  "visibility_id": 71,
  "id": 82,
  "answer_item_id": 4495
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

