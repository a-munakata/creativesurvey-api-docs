---

category_name: visibility
title: 表示ロジックの作成
method: index

---

# 表示ロジックの作成

## 表示ロジックの作成

question_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

order_index:
: __integer__ _(デフォルト: null)_
: 表示ロジックの順序を0から始まる整数で指定します。

~~~
定義
POST https://creativesurvey.com/api/v1/questions/:question_id/visibilities

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/1911/visibilities \
-d "visibility[order_index]=5" \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "question_id": 1911,
  "id": 70,
  "order_index": 5
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

