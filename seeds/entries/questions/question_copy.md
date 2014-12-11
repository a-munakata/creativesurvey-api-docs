---

category_name: question
title: 質問のコピー
action: copy

---

# 質問のコピー

## 質問をコピーします。

`POST https://creativesurvey.com/api/v1/questions/:id/copy`

id _(必須)_:
: __integer__
: 対象の質問id

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/5885/copy \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_type": 2,
  "col_width": null,
  "created_at": "2014-12-10T14:50:17+09:00",
  "description": null,
  "fix_last": null,
  "fix_last_col": null,
  "fix_last_row": null,
  "id": 5887,
  "in_random_range": null,
  "inbox_id": 6,
  "is_back": null,
  "is_check_and_go": null,
  "is_comment_required": null,
  "is_connect": null,
  "is_description": null,
  "is_expand": false,
  "is_image": null,
  "is_impression": true,
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
  "order_index": 1,
  "placeholder": "",
  "question_type": 1,
  "questionnaire_id": 7881,
  "range_max": 1,
  "range_min": null,
  "redirect_url": null,
  "rendered_sentence": "result1ですね。<div>好きな動物は何ですか？</div>",
  "sentence": "",
  "timer_destination_id": null,
  "timer_value": 5,
  "updated_at": "2014-12-10T14:50:17+09:00",
  "answer_type_name": "テキスト選択",
  "any_logic": false,
  "any_visibility": false,
  "answer_items": [
    {
      "answer_type": 2,
      "created_at": "2014-12-10T14:50:17+09:00",
      "id": 10982,
      "inbox_id": 6,
      "is_impression": true,
      "is_multiline": false,
      "is_reject": null,
      "is_required": false,
      "max_value": null,
      "min_value": null,
      "order_index": 0,
      "placeholder": "",
      "question_id": 5887,
      "sentence": "ぞう",
      "updated_at": "2014-12-10T14:50:17+09:00",
      "val": 0.5,
      "validation_pattern": "",
      "validation_type": null,
      "sub_items": [],
      "creative_chain": {
        "attachable_id": 10982,
        "attachable_type": "AnswerItem",
        "created_at": "2014-12-10T14:50:17+09:00",
        "creative_id": null,
        "id": 33879,
        "inbox_id": 6,
        "updated_at": "2014-12-10T14:50:17+09:00"
      }
    },
    {...},
    {...}
  ],
  "sub_items": [],
  "creative_chain": {
    "attachable_id": 5887,
    "attachable_type": "Question",
    "created_at": "2014-12-10T14:50:17+09:00",
    "creative_id": null,
    "id": 33882,
    "inbox_id": 6,
    "updated_at": "2014-12-10T14:50:17+09:00"
  }
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

