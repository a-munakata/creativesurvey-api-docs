---

category_name: questionnaire_variable
title: 置き換え変数設定の取得
action: show

---

# 置き換え変数設定の取得

## アンケートの置き換え変数設定を個別で取得します。

`GET https://creativesurvey.com/api/v1/questionnaire_variables/:id`

id _(必須)_:
: __integer__
: 取得する置き換え変数設定のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaire_variables/602 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_item_id": null,
  "created_at": "2014-11-05T16:42:30+09:00",
  "id": 602,
  "inbox_id": 6,
  "is_separate": null,
  "order_index": 1,
  "questionnaire_id": 7749,
  "result_id": 5428,
  "result_type": "1",
  "result_value": "",
  "separator": null,
  "sub_item_id": null,
  "target": "result",
  "updated_at": "2014-11-05T16:42:50+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

