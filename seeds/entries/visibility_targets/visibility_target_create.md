---

category_name: visibility_target
title: 表示ターゲットの作成
action: create

---

# 表示ターゲットの作成

## 表示ターゲットを作成します。

`POST https://creativesurvey.com/api/v1/visibilities/:id/visibility_targets`

id _(必須)_:
: __integer__
: 表示ターゲットを作成する表示ロジックのid

answer_item_id:
: __integer__ _(デフォルト: null)_
: 非表示にする回答項目のidを指定します。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/visibilities/576/visibility_targets \
-d "auth_token=sample_auth_token" \
-d "visibility_target[answer_item_id]=5188"

レスポンス例
{
  "answer_item_id": 5188,
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

