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
$ curl -X GET https://creativesurvey.com/api/v1/visibility_targets/82 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "visibility_id": 71,
  "id": 82,
  "answer_item_id": 4494
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

