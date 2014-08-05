---

category_name: answer_item
title: 回答項目の作成
action: create

---

# 回答項目の作成

## アンケートの回答項目を作成します。

`POST https://creativesurvey.com/api/v1/questions/:id/answer_items`

id _(必須)_:
: __integer__
: 対象の質問id

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

validation_pattern:
: __string__ _(デフォルト: "")_
: 入力制限を指定した際の正規表現

is_required:
: __boolean__ _(デフォルト: false)_
: 回答を必須にするかどうか

is_multiline:
: __boolean__ _(デフォルト: false)_
: 入力エリアが複数行かどうか

is_impression:
: __boolean__ _(デフォルト: true)_
: 良い・良くないボタンを表示するかしないか
: (良い・良くないボタンはエリアマッピングで設定出来ます。)

order_index:
: __integer__ _(デフォルト: null)_
: 質問内での回答項目の並び順
: 0から始まる整数です。

placeholder:
: __string__ _(デフォルト: "")_
: 文字が入力されていない際に表示するplaceholder

sentence:
: __string__ _(デフォルト: "")_
: 回答項目で提示される文字列

val:
: __float__ _(デフォルト: 0.5)_
: rangeタイプの質問の初期値

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/1829/answer_items \
-d "auth_token=sample_auth_token" \
-d "answer_item[answer_type]=5" \
-d "answer_item[sentence]=Please enter your address" \
-d "answer_item[placeholder]=Address" \
-d "answer_item[is_required]=true" \
-d "answer_item[validation_pattern]=\d{3}-?\d{4}"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "question_id": 1829,
  "id": 4321,
  "max_value": null,
  "min_value": null,
  "is_reject": null,
  "validation_pattern": "\\d{3}-?\\d{4}",
  "validation_type": null,
  "sentence": "Please enter your email",
  "placeholder": "Address",
  "order_index": 0,
  "answer_type": 5,
  "val": 0.5,
  "is_multiline": false,
  "is_impression": true,
  "is_required": true
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

