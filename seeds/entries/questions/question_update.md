---

category_name: question
title: 質問の更新
action: update

---

# 質問の更新

## 質問を更新します。

`PUT https://creativesurvey.com/api/v1/questions/:id`

id _(必須)_:
: __integer__
: 質問を作成する質問票のid

question_type _(必須)_:
: __integer__ _(デフォルト: 1)_
: 質問タイプ。 1,2,4から選択します。
: 1: テキストのみ
: 2: テキストと画像
: 4: テキストと長文

answer_type _(必須)_:
: __integer__ _(デフォルト: 1)_
: 質問ステップのタイプ。下記の質問タイプから選択します。
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

rendered_sentence:
: __string__ _(デフォルト: "")_
: 質問の文言

description:
: __string__ _(デフォルト: "")_
: 注意書きや補足などのテキストを指定します。

placeholder:
: __string__ _(デフォルト: "")_
: "次へ"ボタンの文言を指定します。

launcher_string:
: __string__ _(デフォルト: "")_
: クリッツポイントやエリアマッピングを始める際の"はじめる"ボタンの文言を指定します。

is_timer:
: __boolean__ _(デフォルト: false)_
: 時間制限を有効にするかどうか
: trueにすると、設定した秒数(timer_value)で回答時間制限をします。

timer_value:
: __integer__ _(デフォルト: 5)_
: 時間制限の秒数を設定します。
: is_timerがtrueの際、有効になります。

timer_destination_id:
: __integer__ _(デフォルト: null)_
: 時間制限が有効な際、時間を過ぎたらどの質問にスキップするかを設定します。
: スキップ先の質問idを指定します。

in_random_range:
: __boolean__ _(デフォルト:false)_
: [ランダム設定](#randomizer)の範囲に含まれているかどうか

range_min:
: __integer__ _(デフォルト: null または 1)_
: 回答数の最小値を指定します。
: デフォルトは基本的にnullですが、質問タイプによってデフォルト値が1の場合があります。
: この値を1に指定すると、必須回答となります。

range_max:
: __integer__ _(デフォルト: null または 1)_
: 回答数の最大値を指定します。
: デフォルトは基本的にnullですが、質問タイプによってデフォルト値が1の場合があります。
: この値を1に指定すると、単一回答になります。

order_index:
: __integer__
: 質問順を指定します。
: アンケートの質問はorder_index順に並びます。

is_expand:
: __boolean__ _(デフォルト: false)_
: 画像を使用する質問ステップのタイプにおいて、画像をクリックで拡大するかどうかを設定します。

is_required:
: __boolean__ _(デフォルト: false)_
: 必須回答にするかどうかを指定します。

is_shuffle:
: __boolean__ _(デフォルト: false)_
: 回答項目をランダムするかどうか

is_shuffle_col:
: __boolean__ _(デフォルト: null)_
: 列項目をランダムするかどうか

is_shuffle_row:
: __boolean__ _(デフォルト: null)_
: 行項目をランダムするかどうか

fix_last:
: __boolean__ _(デフォルト: null)_
: 回答項目をランダムにした際に、末尾を固定するかどうか

fix_last_col:
: __boolean__ _(デフォルト: null)_
: 行項目をランダムにした際に行末尾を固定します。

fix_last_row:
: __boolean__ _(デフォルト: null)_
: 列項目をランダムにした際に列末尾を固定します。

is_powered:
: __boolean__ _(デフォルト: true)_
: 最終ステップの、Powered by CREATIVE SURVEYの表記を表示するかしないか

is_sns:
: __boolean__ _(デフォルト: false)_
: 最終ステップの、ソーシャルボックスを表示するかしないか

is_reset:
: __boolean__ _(デフォルト: false)_
: 最終ステップの、はじめに戻るボタンを表示するかしないか

is_impression:
: __boolean__ _(デフォルト: true)_
: エリアマッピングの良い・悪いボタンを表示するかしないか

is_comment_required:
: __boolean__ _(デフォルト: null)_
: エリアマッピングのコメントを必須にするかどうか

is_image:
: __boolean__ _(デフォルト: null)_
: タイトル画像を設定するかどうか

is_description:
: __boolean__ _(デフォルト: null)_
: 説明や注意書きを入力するためのテキストエリアを設定するかどうか

is_range:
: __boolean__ _(デフォルト: null)_
: 回答数の最小値・最大値の設定を有効にするかどうか

is_invert_matrix:
: __boolean__ _(デフォルト: null)_
: マトリクスタイプの行と列を入れ替えるかどうか

is_single_select:
: __boolean__ _(デフォルト: null)_
: 単一選択かどうか

is_back:
: __boolean__ _(デフォルト: null)_
: 戻るボタンを有効にするかどうか

is_check_and_go:
: __boolean__ _(デフォルト: null)_
: 単一選択で回答した際に回答を終了する設定を有効にするかどうか

is_redirect:
: __boolean__ _(デフォルト: null)_
: 最終ステップのリダイレクト設定を有効にするかどうか

redirect_url:
: __string__ _(デフォルト: null)_
: リダイレクト先のURL
: is_redirectがtrueの際に、このURLにリダイレクトされます。

is_screen_out:
: __boolean__ _(デフォルト: null)_
: trueにすると、該当の質問に到達した際に、スクリーンアウトとなります。

is_connect:
: __boolean__ _(デフォルト: null)_
: ページを繋げる設定を有効にするかどうか
: trueを指定すると、次の質問と同一ページに質問が表示されます。

col_width:
: __integer__ _(デフォルト: null)_
: マトリクスタイプの行項目の横幅を指定します。


~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/questions/5333 \
-d "auth_token=sample_auth_token" \
-d "question[rendered_sentence]=MySurvey2" \
-d "question[is_timer]=false" \
-d "question[is_shuffle]=true"

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
  "order_index": 0,
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
  "updated_at": "2014-10-31T19:20:24+09:00",
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

