---

category_name: question
title: 質問の削除
method: delete

---

# 質問の削除

## 質問を削除します。

question_id _(必須)_:
: __integer__
: 対象の質問id

~~~
定義
DELETE https://creativesurvey.com/api/v1/questions/:question_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/questions/1906 \
-u "auth_token=YourAuthToken":

レスポンス例
{  
  "questionnaire_id": 511,
  "id": 1906,
  "in_random_range": false,
  "is_logic": null,
  "timer_destination_id": null,
  "timer_value": 5,
  "is_timer": false,
  "is_expand": false,
  "is_required": null,
  "fix_last_col": null,
  "launcher_string": "",
  "placeholder": "",
  "description": null,
  "rendered_sentence": "MySurvey",
  "sentence": "",
  "answer_type": 1,
  "question_type": 1,
  "order_index": 0,
  "is_range": false,
  "range_max": 1,
  "range_min": null,
  "is_shuffle": false,
  "is_shuffle_row": null,
  "is_shuffle_col": null,
  "fix_last": null,
  "fix_last_row": null
}


~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

