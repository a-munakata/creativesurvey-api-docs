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
curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/page_order_items \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "updated_at": "2014-04-22T10:50:27+09:00",
    "questionnaire_id": 508,
    "question_id": 1824,
    "order_index": 0,
    "is_connect": false,
    "inbox_id": 6,
    "id": 1791,
    "created_at": "2014-04-22T10:50:26+09:00"
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

