---

category_name: question
title: 質問一覧の取得
action: index

---

# 質問一覧の取得

## アンケートの質問一覧を取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/questionnaires/questions`

id _(必須)_:
: __integer__
: 取得する質問が含まれる質問票のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7711/questionnaires/questions \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "answer_type": 2,
    "col_width": null,
    "created_at": "2014-10-24T13:14:40+09:00",
    "description": null,
    "fix_last": null,
    "fix_last_col": null,
    "fix_last_row": null,
    "id": 5188,
    "in_random_range": null,
    "inbox_id": 6,
    "is_back": null,
    "is_check_and_go": null,
    "is_comment_required": null,
    "is_connect": null,
    "is_description": null,
    "is_expand": false,
    "is_image": null,
    "is_impression": null,
    "is_invert_matrix": null,
    "is_logic": null,
    "is_powered": false,
    "is_range": false,
    "is_redirect": null,
    "is_required": null,
    "is_reset": null,
    "is_screen_out": null,
    "is_shuffle": false,
    "is_shuffle_col": null,
    "is_shuffle_row": null,
    "is_single_select": true,
    "is_sns": null,
    "is_timer": null,
    "launcher_string": "",
    "order_index": 0,
    "placeholder": "",
    "question_type": 1,
    "questionnaire_id": 7698,
    "range_max": 1,
    "range_min": null,
    "redirect_url": null,
    "rendered_sentence": "helloooo",
    "sentence": "",
    "timer_destination_id": null,
    "timer_value": 5,
    "updated_at": "2014-10-24T13:15:22+09:00",
    "answer_type_name": "テキスト選択",
    "any_logic": false,
    "any_visibility": false
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

