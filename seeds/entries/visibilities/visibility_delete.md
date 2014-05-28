---

category_name: visibility
title: 表示ロジックの削除
action: delete

---

# 表示ロジックの削除

## 表示ロジックを削除します。

`DELETE https://creativesurvey.com/api/v1/visibilities/:id`

id _(必須)_:
: __integer__
: 削除する分岐設定を含む質問のid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/visibilities/66 \
-d "auth_token=YourAuthToken"

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

