---

category_name: question
title: 質問の取得
method: show

---

# 質問の取得

## 質問表に含まれる質問を個別で取得します。

question_id:
: __integer__
: 対象の質問id

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questions/1906 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-08T18:30:14+09:00",
  "timer_value": 5,
  "timer_destination_id": null,
  "sentence": "",
  "rendered_sentence": "MySurvey",
  "range_min": null,
  "range_max": 1,
  "questionnaire_id": 511,
  "question_type": 1,
  "placeholder": "",
  "order_index": 0,
  "launcher_string": "",
  "is_timer": false,
  "in_random_range": null,
  "id": 1906,
  "fix_last_row": null,
  "fix_last_col": null,
  "fix_last": null,
  "description": null,
  "created_at": "2014-05-08T18:30:14+09:00",
  "answer_type": 1,
  "inbox_id": 6,
  "is_expand": false,
  "is_logic": null,
  "is_range": false,
  "is_required": null,
  "is_shuffle": false,
  "is_shuffle_col": null,
  "is_shuffle_row": null
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

