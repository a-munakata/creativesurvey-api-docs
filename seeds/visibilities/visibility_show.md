---

category_name: visibility
title: 表示ロジックの取得
priority: 997

---

# 表示ロジックの取得

## 表示ロジックを取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

visibility_id*:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/visibilities/:visibility_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/visibilities/58 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T11:46:40+09:00",
  "question_id": 1824,
  "order_index": null,
  "inbox_id": 6,
  "id": 58,
  "created_at": "2014-04-23T11:46:40+09:00"
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

