---

category_name: answer_item
title: 回答項目の更新
action: update

---

# 回答項目の更新

## アンケートの回答項目を更新します。

`PUT https://creativesurvey.com/api/v1/answer_items/:id`

id _(必須)_:
: __integer__
: 更新する回答項目のid

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
$ curl -X PUT https://creativesurvey.com/api/v1/answer_items/10134 \
-d "auth_token=sample_auth_token" \
-d "answer_item[answer_type]=5" \
-d "answer_item[sentence]=Please enter your email" \
-d "answer_item[placeholder]=Email" \
-d "answer_item[is_required]=true" \
-d "answer_item[validation_pattern]=^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$"

レスポンス例
{
  "answer_type": 5,
  "created_at": "2014-11-05T16:16:41+09:00",
  "id": 10134,
  "inbox_id": 6,
  "is_impression": true,
  "is_multiline": false,
  "is_reject": null,
  "is_required": true,
  "max_value": null,
  "min_value": null,
  "order_index": null,
  "placeholder": "Email",
  "question_id": 5422,
  "sentence": "Please enter your email",
  "updated_at": "2014-11-05T16:18:21+09:00",
  "val": 0.5,
  "validation_pattern": "^([a-zA-Z0-9_\\.\\-]) \\@(([a-zA-Z0-9\\-]) \\.) ([a-zA-Z0-9]{2,4}) $",
  "validation_type": null,
  "name": "Please enter your email",
  "creative_chain": {
    "attachable_id": 10134,
    "attachable_type": "AnswerItem",
    "created_at": "2014-11-05T16:16:41+09:00",
    "creative_id": null,
    "id": 32078,
    "inbox_id": 6,
    "updated_at": "2014-11-05T16:16:41+09:00"
  },
  "sub_items": []
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

