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

is_valid:
: __boolean__ _(デフォルト: true)_
: 有効かどうか

destination_id:
: __integer__
: 

answer_item_id:

~~~
定義
PUT https://creativesurvey.com/api/v1/api/v1/logics/:logic_id

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/logics/138 \
-d "logic[order_index]=3" \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "question_id": 1825,
  "id": 138,
  "order_index": 3,
  "is_valid": true,
  "destination_id": null,
  "answer_item_id": null
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

