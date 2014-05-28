---

category_name: page_order_item
title: 質問順序一覧の取得
action: index

---

# 質問順序一覧の取得

## アンケートの質問順を一覧で取得します。

`GET https://creativesurvey.com/api/v1/questionnaires/:id/page_order_items`

id _(必須)_:
: __integer__
: 対象の質問表id

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaires/518/page_order_items \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "questionnaire_id": 518,
    "id": 1847,
    "is_connect": false,
    "order_index": 0,
    "question_id": 1879
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

