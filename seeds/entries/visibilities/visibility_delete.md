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

