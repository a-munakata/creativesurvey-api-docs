---

category_name: questionnaire_variable
title: 置き換え変数設定一覧の取得
action: index

---

# 置き換え変数設定一覧の取得

## アンケートの置き換え変数設定一覧を取得します。

`GET https://creativesurvey.com/api/v1/questionnaires/:id/questionnaire_variables`

id _(必須)_:
: __integer__
: 取得する置き換え変数設定を含む質問表のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaires/510/questionnaire_variables \
-d "auth_token=YourAuthToken"
レスポンス例
[
  {
    "questionnaire_id": 510,
    "id": 103,
    "sub_item_id": null,
    "result_type": "1",
    "result_value": "",
    "result_id": 1831,
    "target": "color",
    "order_index": 1,
    "is_separate": false,
    "separator": "",
    "answer_item_id": null
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

