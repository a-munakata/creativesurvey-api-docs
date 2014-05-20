---

category_name: visibility
title: 表示ロジックの取得
method: show

---

# 表示ロジックの取得

## 表示ロジックを取得します。

visibility_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/visibilities/:visibility_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/66 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "question_id": 1911,
  "id": 66,
  "order_index": 4
}

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

