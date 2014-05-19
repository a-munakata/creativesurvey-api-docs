---

category_name: logic
title: 分岐設定の更新
method: show

---

# 分岐設定の更新

## 分岐設定を更新します。

logic_id _(必須)_:
: __integer__
: 更新する分岐設定のid

order_index:
: __integer__ _(デフォルト: 0)_
: 分岐設定の順序
: 0から始まる整数で指定します。

~~~
定義
PUT https://creativesurvey.com/api/v1/api/v1/logics/:logic_id

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/logics/139 \
-d "logic[order_index]=3" \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-19T15:55:30+09:00",
  "question_id": 1876,
  "order_index": 3,
  "answer_id": null,
  "answer_item_id": null,
  "created_at": "2014-04-28T18:40:28+09:00",
  "destination_id": null,
  "destination_index": null,
  "id": 139,
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

