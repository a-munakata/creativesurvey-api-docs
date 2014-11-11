---

category_name: question
title: 質問の取得
action: show

---

# 質問の取得

## 質問票に含まれる質問を個別で取得します。

`GET https://creativesurvey.com/api/v1/questions/:id`

id _(必須)_:
: __integer__
: 対象の質問id

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/5333 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_type": 1,
  "col_width": null,
  "created_at": "2014-10-31T19:18:04+09:00",
  "description": null,
  "fix_last": null,
  "fix_last_col": null,
  "fix_last_row": null,
  "id": 5333,
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
  "is_shuffle": true,
  "is_shuffle_col": null,
  "is_shuffle_row": null,
  "is_single_select": true,
  "is_sns": null,
  "is_timer": false,
  "launcher_string": "",
  "order_index": 1,
  "placeholder": "",
  "question_type": 1,
  "questionnaire_id": 7698,
  "range_max": 1,
  "range_min": null,
  "redirect_url": null,
  "rendered_sentence": "MySurvey2",
  "sentence": "",
  "timer_destination_id": null,
  "timer_value": 5,
  "updated_at": "2014-10-31T19:27:46+09:00",
  "answer_type_name": "単一テキスト選択",
  "any_logic": false,
  "any_visibility": false,
  "answer_items": [
    {
      "answer_type": 1,
      "created_at": "2014-10-31T19:18:04+09:00",
      "id": 9927,
      "inbox_id": 6,
      "is_impression": true,
      "is_multiline": false,
      "is_reject": null,
      "is_required": false,
      "max_value": null,
      "min_value": null,
      "order_index": null,
      "placeholder": "",
      "question_id": 5333,
      "sentence": "",
      "updated_at": "2014-10-31T19:18:04+09:00",
      "val": 0.5,
      "validation_pattern": "",
      "validation_type": null,
      "sub_items": [],
      "creative_chain": {
        "attachable_id": 9927,
        "attachable_type": "AnswerItem",
        "created_at": "2014-10-31T19:18:04+09:00",
        "creative_id": null,
        "id": 31655,
        "inbox_id": 6,
        "updated_at": "2014-10-31T19:18:04+09:00"
      }
    }
  ],
  "sub_items": [
    {
      "answer_type": 1,
      "attachable_id": 5333,
      "attachable_type": "Question",
      "created_at": "2014-10-31T19:18:04+09:00",
      "id": 8683,
      "inbox_id": 6,
      "max_value": null,
      "min_value": null,
      "order_index": 0,
      "placeholder": "",
      "sentence": "",
      "updated_at": "2014-10-31T19:18:04+09:00",
      "creative_chain": {
        "attachable_id": 8683,
        "attachable_type": "SubItem",
        "created_at": "2014-10-31T19:18:04+09:00",
        "creative_id": null,
        "id": 31656,
        "inbox_id": 6,
        "updated_at": "2014-10-31T19:18:04+09:00"
      }
    },
    {
      "answer_type": 1,
      "attachable_id": 5333,
      "attachable_type": "Question",
      "created_at": "2014-10-31T19:18:04+09:00",
      "id": 8684,
      "inbox_id": 6,
      "max_value": null,
      "min_value": null,
      "order_index": 0,
      "placeholder": "",
      "sentence": "",
      "updated_at": "2014-10-31T19:18:04+09:00",
      "creative_chain": {
        "attachable_id": 8684,
        "attachable_type": "SubItem",
        "created_at": "2014-10-31T19:18:04+09:00",
        "creative_id": null,
        "id": 31657,
        "inbox_id": 6,
        "updated_at": "2014-10-31T19:18:04+09:00"
      }
    }
  ],
  "creative_chain": {
    "attachable_id": 5333,
    "attachable_type": "Question",
    "created_at": "2014-10-31T19:18:04+09:00",
    "creative_id": null,
    "id": 31658,
    "inbox_id": 6,
    "updated_at": "2014-10-31T19:18:04+09:00"
  }
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

