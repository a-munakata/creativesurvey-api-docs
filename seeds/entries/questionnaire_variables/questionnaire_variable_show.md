---

category_name: questionnaire_variable
title: 置き換え変数設定の取得
method: show

---

# 置き換え変数設定の取得

## アンケートの置き換え変数設定を個別で取得します。

questionnaire_variable_id:
: __integer__
: 取得する置き換え変数設定のid

~~~
定義
GET https://creativesurvey.com/api/v1/questionnaire_variables/:questionnaire_variable_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaire_variables/103 \
-d "auth_token=YourAuthToken"

レスポンス例
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

