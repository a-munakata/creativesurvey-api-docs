---

category_name: logic
title: 分岐設定の削除
method: delete

---

# 分岐設定の削除

## 分岐設定を削除します。

logic_id _(必須)_:
: __integer__
: 削除する分岐設定のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/api/v1/logics/:logic_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/logics/137 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-04-23T11:38:46+09:00",
  "question_id": 1825,
  "order_index": 3,
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

