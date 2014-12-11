---

category_name: questionnaire
title: 質問順序の変更
action: order

---

# 質問順序の変更

## 質問票内の質問順序を更新します。

`POST https://creativesurvey.com/api/v1/surveys/:id/questionnaire/order`

id _(必須)_:
: __integer__
: アンケートのid

questions:
: 質問の配列をパラメータとして渡します。
: {questions: [{id: xxx, order_index: xxx}, {...}, {...}]}
: 質問オブジェクトは、idとorder_indexをそれぞれ指定する事で複数の質問を一度に更新出来ます。
: 質問のorder_indexを個別に変更する場合は、[question#update](#question_update)より行ってください。


##### 例ではjsonを渡しています。この場合、auth_tokenを-dオプションで渡すと、auth_tokenパラメータがquestionsパラメータに含まれてしまい、JSONがうまくパースされません。jsonでパラメータを渡す場合は-uオプションを使ってauth_tokenを渡す事で、正しくパラメータが解釈されます。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/7880/questionnaire/order \
-u "sample_auth_token": \
-H "Content-Type: application/json" \
-d "{\"questions\":[{\"id\":5875, \"order_index\":5},{\"id\":5880, \"order_index\":1}]}"


レスポンス例
{
  "characters": null,
  "created_at": "2014-12-10T11:08:40+09:00",
  "current_order": 0,
  "id": 7880,
  "inbox_id": 6,
  "questions_count": 0,
  "survey_id": 7896,
  "updated_at": "2014-12-10T11:08:40+09:00",
  "generate_order": [
    [
      5877
    ],
    [
      5880
    ],
    [
      5878
    ],
    [
      5879
    ],
    [
      5875
    ],
    [
      5876
    ]
  ],
  "random_region": []
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

