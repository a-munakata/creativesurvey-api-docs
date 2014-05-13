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
curl -X GET https://creativesurvey.com/api/v1/questionnaire_variables/100 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-04-22T18:00:50+09:00",
  "target": "result",
  "sub_item_id": null,
  "separator": "",
  "result_value": "りんご",
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

