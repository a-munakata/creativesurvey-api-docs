---

category_name: question
title: 質問の取得
priority: 997

---

# 質問の取得

## 質問表に含まれる質問を個別で取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

question_id:
: __integer__
: 対象の質問id

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questions/1827 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T12:13:09+09:00",
  "timer_value": 5,
  "timer_destination_id": 0,
  "rendered_sentence": "質問4",
  "range_min": 1,
  "range_max": 3,
  "questionnaire_id": 508,
  "question_type": 2,
  "placeholder": "",
  "order_index": 3,
  "launcher_string": "",
  "is_timer": true,
  "id": 1827,
  "fix_last_row": null,
  "fix_last_col": null,
  "fix_last": false,
  "description": "",
  "created_at": "2014-04-22T11:40:08+09:00",
  "answer_type": 2,
  "inbox_id": 6,
  "is_expand": false,
  "is_range": true,
  "is_required": true,
  "is_shuffle": true,
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

