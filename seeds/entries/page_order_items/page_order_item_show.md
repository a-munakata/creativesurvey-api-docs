---

category_name: page_order_item
title: 質問順序の取得
method: show

---

# 質問順序の取得

## アンケート内の質問順序を個別で取得します。

page_order_item_id _(必須)_:
: __integer__
: 取得したい質問順序のid

~~~
定義
GET https://creativesurvey.com/api/v1/page_order_items/:page_order_item_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/page_order_items/1798 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-04-22T17:39:41+09:00",
  "questionnaire_id": 510,
  "question_id": 1830,
  "order_index": 1,
  "is_connect": false,
  "inbox_id": 6,
  "id": 1798,
  "created_at": "2014-04-22T17:39:40+09:00"
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

