---

category_name: question
title: 質問の作成
priority: 999

---

# 質問の作成

## 質問を作成します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

questionnaire_id*:
: __integer__
: 質問を作成する質問表のid

question_type:
: __integer__ _(デフォルト: 1)_
: 質問タイプ
: TODO 質問タイプ一覧

rendered_sentence:
: __string__
: 質問の文言

is_timer:
: __boolean__ _(デフォルト: false)_
: 時間制限

is_random:
: __boolean__ 
: ランダム設定

~~~
定義
PUT https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/questions

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/questionnaires/511/questions \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "question[rendered_sentence]=MySurvey" \
-d "question[is_timer]=false" \
-d "question[is_shuffle]=false"

レスポンス例
{
  "updated_at": "2014-04-23T12:17:19+09:00",
  "timer_value": 5,
  "timer_destination_id": 0,
  "sentence": "",
  "rendered_sentence": "MySurvey",
  "range_min": 1,
  "range_max": 3,
  "questionnaire_id": 508,
  "question_type": 2,
  "placeholder": "",
  "order_index": 3,
  "launcher_string": "",
  "is_timer": false,
  "in_random_range": false,
  "id": 1827,
  "fix_last_row": null,
  "fix_last_col": null,
  "fix_last": false,
  "description": "",
  "created_at": "2014-04-22T11:40:08+09:00",
  "answer_type": 2,
  "inbox_id": 6,
  "is_expand": false,
  "is_logic": null,
  "is_range": true,
  "is_required": true,
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

