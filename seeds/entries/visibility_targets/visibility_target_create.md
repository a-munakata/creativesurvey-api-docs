---

category_name: visibility_target
title: 表示ターゲットの作成
method: create

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
$ curl -X POST https://creativesurvey.com/api/v1/visibilities/71/visibility_targets \
-d "auth_token=YourAuthToken" \
-d "visibility_target[answer_item_id]=4491"

レスポンス例
{
  "visibility_id": 71,
  "id": 83,
  "answer_item_id": 4491
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

