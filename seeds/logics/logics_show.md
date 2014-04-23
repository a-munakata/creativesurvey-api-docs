---

category_name: logic
title: 分岐設定の取得
priority: 999

---

# 分岐設定の取得

## 分岐設定を取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

logic_id*:
: __integer__
: 取得する分岐設定のid

~~~
定義
GET https://creativesurvey.com/api/v1/api/v1/logics/:logic_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/logics/137 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T11:18:45+09:00",
  "question_id": 1825,
  "order_index": 0,
  "answer_id": null,
  "answer_item_id": null,
  "created_at": "2014-04-23T11:18:45+09:00",
  "destination_id": null,
  "destination_index": null,
  "id": 137,
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

