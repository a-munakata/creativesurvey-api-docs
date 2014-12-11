---

category_name: randomizer
title: 複数のランダム設定を一括更新
action: import

---

# 複数のランダム設定を一括更新

## 複数のランダム設定を一括で更新します。

`PUT https://creativesurvey.com/api/v1/surveys/:survey_id/questionnaire/randomizers/import`

id _(必須)_:
: __integer__
: アンケートID

randomizers:
: ランダム設定の配列をパラメータとして渡します。
: {randomzers: [{randomizer_params}, {...}, {...}]}
: ランダム設定で変更出来るパラメータは、[randomizer#update](#randomizer_update)を参照してください。

##### 例ではjsonを渡しています。この場合、auth_tokenを-dオプションで渡すと、auth_tokenパラメータがquestionsパラメータに含まれてしまい、JSONがうまくパースされません。jsonでパラメータを渡す場合は-uオプションを使ってauth_tokenを渡す事で、正しくパラメータが解釈されます。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/surveys/7899/questionnaire/randomizers/import \
-u "sample_auth_token": \
-H "Content-Type: application/json" \
-d '{"randomizers": [{"id": 489, "step_num":2},{"id": 490, "step_num":2}] }'

レスポンス例
[
  {
    "created_at": "2014-12-10T22:25:13+09:00",
    "end_index": 1,
    "id": 489,
    "inbox_id": 6,
    "is_valid": true,
    "order_index": 0,
    "questionnaire_id": 7883,
    "start_index": 0,
    "step_num": 2,
    "updated_at": "2014-12-10T22:25:24+09:00"
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

