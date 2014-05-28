---

category_name: question
title: 質問一覧の取得
action: index

---

# 質問一覧の取得

## アンケートの質問一覧を取得します。

`GET https://creativesurvey.com/api/v1/questionnaires/:id/questions`

id _(必須)_:
: __integer__
: 取得する質問が含まれる質問表のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/questions \
-d "auth_token=YourAuthToken"
レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
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

