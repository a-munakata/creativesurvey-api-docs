---

category_name: visibility
title: 表示ロジックの取得
action: show

---

# 表示ロジックの取得

## 表示ロジックを取得します。

`GET https://creativesurvey.com/api/v1/visibilities/:id`

id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/66 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "question_id": 1911,
  "id": 66,
  "order_index": 4
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

