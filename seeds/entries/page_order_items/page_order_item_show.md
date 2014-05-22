---

category_name: page_order_item
title: 質問順序の取得
method: show

---

# 質問順序の取得

## アンケート内の質問順序を個別で取得します。

`GET https://creativesurvey.com/api/v1/page_order_items/:id`

id _(必須)_:
: __integer__
: 取得したい質問順序のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/page_order_items/1798 \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "questionnaire_id": 507,
  "id": 1789,
  "is_connect": false,
  "order_index": 1
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

