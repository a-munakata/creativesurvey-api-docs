---

category_name: visibility
title: 表示ロジックの作成
action: create

---

# 表示ロジックの作成

## 表示ロジックの作成

`POST https://creativesurvey.com/api/v1/questions/:id/visibilities`

question_id _(必須)_:
: __integer__
: 作成する分岐設定を含む質問のid

order_index:
: __integer__ _(デフォルト: null)_
: 表示ロジックの順序を0から始まる整数で指定します。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/1911/visibilities \
-d "visibility[order_index]=5" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "question_id": 1911,
  "id": 70,
  "order_index": 5
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

