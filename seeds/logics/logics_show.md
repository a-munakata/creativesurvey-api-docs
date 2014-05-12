---

category_name: logic
title: 分岐設定の取得
priority: 997

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
curl -X GET https://creativesurvey.com/api/v1/logics/139 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "logic_items": [
    {
      "condition": "==",
      "answer_item_id": 4409,
      "question_id": 1875
    },
    {
      "condition": "!=",
      "answer_item_id": 4411,
      "question_id": 1876
    }
  ],
  "message": "3問目にスキップ",
  "destination_id": null,
  "answer_item_id": null,
  "updated_at": "2014-04-28T18:40:28+09:00",
  "id": 139,
  "inbox_id": 6,
  "question_id": 1878,
  "answer_id": null,
  "destination_index": null,
  "order_index": 0,
  "is_valid": true,
  "created_at": "2014-04-28T18:40:28+09:00"
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

