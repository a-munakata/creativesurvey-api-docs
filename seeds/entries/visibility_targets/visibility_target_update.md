---

category_name: visibility_target
title: 表示ターゲットの更新
action: update

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
$ curl -X PUT https://creativesurvey.com/api/v1/visibility_targets/864 \
-d "auth_token=sample_auth_token" \
-d "visibility_target[answer_item_id]=4495"

レスポンス例
{
  "answer_item_id": 4495,
  "created_at": "2014-10-31T20:07:52+09:00",
  "id": 864,
  "inbox_id": 6,
  "updated_at": "2014-10-31T20:07:52+09:00",
  "visibility_id": 576
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

