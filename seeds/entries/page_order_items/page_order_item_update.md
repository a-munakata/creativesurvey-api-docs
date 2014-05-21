---

category_name: page_order_item
title: 質問順序の更新
method: update

---

# 質問順序の更新

## アンケート内の質問順序を更新します。

page_order_item_id _(必須)_:
: __integer__
: 更新する質問順序のid

order_index:
: __integer__ _(デフォルト: null)_
: 更新する質問順index
: indexは0から始まる整数です。

is_connect:
: __boolean__ _(デフォルト: false)_
: trueを指定するとページをつなげる設定が有効になり、設定した質問とその次の質問が同一ページに表示されます。

~~~
定義
PUT https://creativesurvey.com/api/v1/page_order_items/:page_order_item_id

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/page_order_items/1798 \
-d "auth_token=YourAuthToken" \
-d "page_order_item[order_index]=3" \
-d "page_order_item[is_connect]=true"

レスポンス例
{
  "questionnaire_id": 507,
  "id": 1789,
  "is_connect": true,
  "order_index": 3
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

