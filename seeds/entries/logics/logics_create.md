---

category_name: logic
title: 分岐設定の作成
method: create

---

# 分岐設定の作成

## 分岐設定を作成します。

question_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
POST https://creativesurvey.com/api/v1/questions/:question_id/logics

リクエスト例
curl -X POST https://creativesurvey.com/api/v1/questions/1876/logics \
-d "logic[order_index]=3" \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-19T15:59:47+09:00",
  "question_id": 1876,
  "order_index": 3,
  "answer_id": null,
  "answer_item_id": null,
  "created_at": "2014-05-19T15:59:47+09:00",
  "destination_id": null,
  "destination_index": null,
  "id": 143,
  "inbox_id": 6,
  "is_valid": true
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

