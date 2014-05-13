---

category_name: answer_item
title: 回答項目の更新
method: update

---

# 回答項目の更新

## アンケートの回答項目を更新します。

answer_item_id _(必須)_:
: __integer__
: 取得する回答項目のid

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
: __string__
: 回答項目で提示される文字列

~~~
定義
PUT https://creativesurvey.com/api/v1/answer_items/:answer_item_id

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/answer_items/4321 \
-d "auth_token=YourAuthToken" \
-d "answer_item[answer_type]=5" \
-d "answer_item[sentence]=Please enter your email" \
-d "answer_item[placeholder]=Email" \
-d "answer_item[is_required]=true" \
-d "answer_item[validation_pattern]=^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$"

レスポンス例
{
  "validation_type": null,
  "validation_pattern": "^([a-zA-Z0-9_\\.\\-]) \\@(([a-zA-Z0-9\\-]) \\.) ([a-zA-Z0-9]{2,4}) $",
  "is_required": true,
  "is_reject": null,
  "is_multiline": false,
  "is_impression": true,
  "inbox_id": 6,
  "id": 4321,
  "created_at": "2014-04-22T19:30:40+09:00",
  "answer_type": 5,
  "max_value": null,
  "min_value": null,
  "order_index": null,
  "placeholder": "Email",
  "question_id": 1838,
  "sentence": "Please enter your email",
  "updated_at": "2014-04-22T19:36:50+09:00",
  "val": 0.5
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

