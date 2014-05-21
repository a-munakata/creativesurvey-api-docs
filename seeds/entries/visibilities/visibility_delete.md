---

category_name: visibility
title: 表示ロジックの削除
method: delete

---

# 表示ロジックの削除

## 表示ロジックを削除します。

visibility_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/visibilities/:visibility_id

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/visibilities/66 \
-u "auth_token=YourAuthToken":

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

