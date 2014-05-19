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

~~~
定義
POST https://creativesurvey.com/api/v1/questions/:question_id/visibilities

リクエスト例
curl -X POST https://creativesurvey.com/api/v1/questions/1911/visibilities \
-d "visibility[order_index]=3" \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-19T16:43:07+09:00",
  "question_id": 1911,
  "order_index": 3,
  "inbox_id": 6,
  "id": 69,
  "created_at": "2014-05-19T16:43:07+09:00"
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

