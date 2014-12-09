---

category_name: visibility_target
title: 表示ターゲットの取得
action: show

---

# 表示ターゲットの取得

## 表示ターゲットを個別で取得します。

`GET https://creativesurvey.com/api/v1/visibility_targets/:id`

id _(必須)_:
: __integer__
: 取得する表示ターゲットのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibility_targets/864 \
-d "auth_token=sample_auth_token"

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

