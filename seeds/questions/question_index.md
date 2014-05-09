---

category_name: question
title: 質問一覧の取得
priority: 999

---

# 質問一覧の取得

## アンケートの質問一覧を取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

questionnaire_id:
: __integer__
: 取得する質問が含まれる質問表のid

~~~
定義
GET https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/questions

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/questions \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "updated_at": "2014-04-22T17:11:40+09:00",
    "timer_value": 5,
    "timer_destination_id": null,
    "sentence": "",
    "rendered_sentence": "質問1",
    "range_min": null,
    "range_max": 1,
    "questionnaire_id": 508,
    "question_type": 1,
    "placeholder": "",
    "order_index": 1,
    "launcher_string": "",
    "is_timer": false,
    "in_random_range": false,
    "id": 1824,
    "fix_last_row": null,
    "fix_last_col": null,
    "fix_last": false,
    "description": "",
    "created_at": "2014-04-22T10:50:26+09:00",
    "answer_type": 2,
    "inbox_id": 6,
    "is_expand": false,
    "is_logic": null,
    "is_range": false,
    "is_required": false,
    "is_shuffle": false,
    "is_shuffle_col": null,
    "is_shuffle_row": null
  },
  {...},
  {...}
]

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

