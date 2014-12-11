---

category_name: question
title: 質問タイプの変更
action: migrate

---

# 質問タイプの変更

## 質問タイプを変更します。回答タイプを変更するとタイプに応じて回答項目の数が調整され、一部が削除されるので注意してください。一度開始されたアンケートでは、この操作を行う事は出来ません。

`POST https://creativesurvey.com/api/v1/questions/:id/migrate`

id _(必須)_:
: __integer__
: 対象の質問id

answer_type _(必須)_:
: __integer__
質問ステップのタイプ。下記の質問タイプから選択します。
: 2: テキスト選択
: 4: 画像選択
: 5: 自由入力
: 6: エリアマッピング
: 7: スライドバー
: 8: マルチスライド
: 9: クリッツ
: 11: マトリクス
: 13: 開始画面
: 14: テキスト提示
: 16: マトリクス(画像)
: 17: 画像提示
: 18: サバイバル
: 19: サバイバル画像
: 20: マルチクリッツ
: 21: プルダウン
: 22: 最終タイプ
: 23: スケールタイプ
: 24: アップロードタイプ


~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/5885/migrate \
-d "answer_type=5" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "answer_type": 5,
  "col_width": null,
  "created_at": "2014-12-10T14:29:36+09:00",
  "description": null,
  "fix_last": null,
  "fix_last_col": null,
  "fix_last_row": null,
  "id": 5885,
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
  "updated_at": "2014-12-10T14:57:05+09:00",
  "answer_type_name": "テキスト入力",
  "any_logic": false,
  "any_visibility": false,
  "answer_items": [
    {
      "answer_type": 5,
      "created_at": "2014-12-10T14:29:36+09:00",
      "id": 10975,
      "inbox_id": 6,
      "is_impression": true,
      "is_multiline": false,
      "is_reject": null,
      "is_required": false,
      "max_value": null,
      "min_value": null,
      "order_index": 0,
      "placeholder": "",
      "question_id": 5885,
      "sentence": "ぞう",
      "updated_at": "2014-12-10T14:57:05+09:00",
      "val": 0.5,
      "validation_pattern": "",
      "validation_type": null,
      "sub_items": [],
      "creative_chain": {
        "attachable_id": 10975,
        "attachable_type": "AnswerItem",
        "created_at": "2014-12-10T14:29:36+09:00",
        "creative_id": null,
        "id": 33870,
        "inbox_id": 6,
        "updated_at": "2014-12-10T14:29:36+09:00"
      }
    },
    {...},
    {...}
  ],
  "sub_items": [],
  "creative_chain": {
    "attachable_id": 5885,
    "attachable_type": "Question",
    "created_at": "2014-12-10T14:29:36+09:00",
    "creative_id": null,
    "id": 33872,
    "inbox_id": 6,
    "updated_at": "2014-12-10T14:29:36+09:00"
  }
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

