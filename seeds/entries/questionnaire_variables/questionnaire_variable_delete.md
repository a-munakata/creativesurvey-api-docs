---

category_name: questionnaire_variable
title: 置き換え変数設定の削除
action: delete

---

# 置き換え変数設定の削除

## アンケートの置き換え変数設定を削除します。

`DELETE https://creativesurvey.com/api/v1/questionnaire_variables/:id`

id _(必須)_:
: __integer__
: 削除する置き換え変数設定のid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/questionnaire_variables/100 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "updated_at": "2014-04-22T18:42:34+09:00",
  "target": "question_result",
  "sub_item_id": null,
  "separator": "",
  "result_value": "hoge",
  "result_type": "2",
  "answer_item_id": null,
  "created_at": "2014-04-22T17:55:16+09:00",
  "id": 100,
  "inbox_id": 6,
  "is_separate": false,
  "order_index": 0,
  "questionnaire_id": 510,
  "result_id": 1829
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

