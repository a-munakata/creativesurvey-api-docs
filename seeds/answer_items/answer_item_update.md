---

category_name: answer_item
title: 回答項目の更新
priority: 999

---

# 回答項目の更新

## アンケートの回答項目を更新します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

answer_item_id*:
: __integer__
: 取得する回答項目のid

answer_item[answer_type]*:
: __integer__
: 質問タイプのid
: TODO 質問タイプの一覧

answer_item[validation_type]:
: TODO

answer_item[validation_pattern]:
: __string__ _(デフォルト: "")_
: 入力制限を指定した際の正規表現

answer_item[is_required]:
: __boolean__ _(デフォルト: false)_
: 回答が必須かどうか

answer_item[is_reject]:
: TODO

answer_item[is_multiline]:
: __boolean__ _(デフォルト: false)_
: 入力エリアが複数行かどうか

answer_item[max_value]:
: __integer__ _(デフォルト: null)_
: TODO

answer_item[min_value]:
: __integer__ _(デフォルト: null)_
: TODO

answer_item[order_index]:
: __integer__
: 質問内での回答項目の並び順
: 0から始まる整数です。

answer_item[placeholder]:
: __string__ _(デフォルト: "")_
: 文字が入力されていない際に表示されるplaceholder

answer_item[question_id]:
: __integer__
: 回答を含む質問のid

answer_item[sentence]:
: __string__
: 回答項目で提示される文字列

answer_item[val]:
: __number__
: rangeで回答する質問タイプの初期値
: TODO

~~~
定義
PUT https://creativesurvey.com/api/v1/answer_items/:answer_item_id

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/answer_items/4321 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "answer_item[answer_type]=5" \
-d "answer_item[sentence]=Please enter your email" \
-d "answer_item[placeholder]=Email" \
-d "answer_item[is_required]=true" \
-d "answer_item[validation_pattern]=^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$

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

