---

category_name: page_order_item
title: 質問順序の更新
action: update

---

# 質問順序の更新

## アンケート内の質問順序を更新します。

`PUT https://creativesurvey.com/api/v1/page_order_items/:id`

id _(必須)_:
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

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/page_order_items/1851 \
-d "auth_token=sample_auth_token" \
-d "page_order_item[order_index]=10" \
-d "page_order_item[is_connect]=true"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "id": 1851,
  "is_connect": true,
  "order_index": 10,
  "question_id": 1883
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

