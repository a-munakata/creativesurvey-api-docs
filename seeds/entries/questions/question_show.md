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
  "questionnaire_id": 508,
  "id": 1824,
  "in_random_range": false,
  "is_logic": null,
  "timer_destination_id": null,
  "timer_value": 5,
  "is_timer": false,
  "is_expand": false,
  "is_required": false,
  "fix_last_col": null,
  "launcher_string": "",
  "placeholder": "",
  "description": "",
  "rendered_sentence": "質問1",
  "sentence": "",
  "answer_type": 2,
  "question_type": 1,
  "order_index": 1,
  "is_range": false,
  "range_max": 1,
  "range_min": null,
  "is_shuffle": false,
  "is_shuffle_row": null,
  "is_shuffle_col": null,
  "fix_last": false,
  "fix_last_row": null
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

