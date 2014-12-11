---

category_name: questionnaire_variable
title: 複数の置き換え変数設定を一括更新
action: import

---

# 複数の置き換え変数設定を一括更新

## 複数の置き換え変数を、一括で更新します。

`PUT https://creativesurvey.com/api/v1/surveys/:survey_id/questionnaire/questionnaire_variables/import`

id _(必須)_:
: __integer__
: アップデートする置き換え変数設定のid

questionnaire_variables:
: 置き換え変数の配列をパラメータとして渡します。
: {questionnaire_variables: [{questionnaire_variable_params},{...},{...}]}
: 置き換え変数の変更で使用出来るパラメータは[questionnaire_variable#update](#questionnaire_variable_update)より参照してください。

##### 例ではjsonを渡しています。この場合、auth_tokenを-dオプションで渡すと、auth_tokenパラメータがquestionsパラメータに含まれてしまい、JSONがうまくパースされません。jsonでパラメータを渡す場合は-uオプションを使ってauth_tokenを渡す事で、正しくパラメータが解釈されます。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/api/v1/surveys/768/questionnaire/questionnaire_variables/import \
-u "sample_auth_token": \
-H "Content-Type: application/json" \
-d '{"questionnaire_variables": [{"id": 634, "result_id": 5885},{"id": 635, "result_id": 5884}]}'


レスポンス例
[
  {
    "answer_item_id": null,
    "created_at": "2014-12-10T14:30:41+09:00",
    "id": 634,
    "inbox_id": 6,
    "is_separate": null,
    "order_index": 0,
    "questionnaire_id": 7881,
    "result_id": 5885,
    "result_type": "1",
    "result_value": "",
    "separator": null,
    "sub_item_id": null,
    "target": "result1",
    "updated_at": "2014-12-10T14:36:34+09:00"
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

