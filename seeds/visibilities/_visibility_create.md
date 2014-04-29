---

category_name: visibility
title: 表示ロジックの作成
priority: 999

---

# 表示ロジックの作成

## 表示ロジックを作成します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

question_id*:
: __integer__
: 表示ロジックを作成したい質問のid

~~~
定義
POST https://creativesurvey.com/api/v1/questions/:question_id/visibilities

リクエスト例
curl -X POST https://creativesurvey.com/api/v1/questions/1880/visibilities \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-29T23:11:37+09:00",
  "question_id": 1880,
  "order_index": null,
  "inbox_id": 6,
  "id": 61,
  "created_at": "2014-04-29T23:11:37+09:00"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

