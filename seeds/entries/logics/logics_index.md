---

category_name: logic
title: 分岐設定一覧の取得
method: index

---

# 分岐設定一覧の取得

## 分岐設定一覧を取得します。

question_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/logics

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questions/1825/logics \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "updated_at": "2014-04-28T18:40:28+09:00",
    "question_id": 1876,
    "order_index": 0,
    "answer_id": null,
    "answer_item_id": null,
    "created_at": "2014-04-28T18:40:28+09:00",
    "destination_id": null,
    "destination_index": null,
    "id": 139,
    "inbox_id": 6,
    "is_valid": true
  },
  {...},
  {...}
]

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

