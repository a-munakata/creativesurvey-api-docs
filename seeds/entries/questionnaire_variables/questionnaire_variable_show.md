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
$ curl -X GET https://creativesurvey.com/api/v1/questionnaire_variables/103 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

