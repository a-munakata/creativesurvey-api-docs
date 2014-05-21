---

category_name: page_order_item
title: 質問順序一覧の取得
method: index

---

# 質問順序一覧の取得

## アンケートの質問順を一覧で取得します。

questionnaire_id _(必須)_:
: __integer__
: 取得したい質問順序を含む質問表のid

~~~
定義
GET https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/page_order_items

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/page_order_items \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "questionnaire_id": 508,
    "id": 1796,
    "is_connect": null,
    "order_index": null
  },
  {...},
  {...}
]

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

