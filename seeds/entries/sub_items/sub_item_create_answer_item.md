---

category_name: sub_item
title: 回答補助項目の作成　　　(回答項目から)
method: create
parent_klass: answer_item

---

# 回答補助項目一覧の取得(回答項目から)

## 回答補助項目を作成します。回答補助項目はQuestion(質問)とAnswerItem(回答項目)下に作成することが出来ます。

## AnswerItem(回答項目)に回答補助項目を作成する
answer_item_id _(必須)_:
: __integer__
: 取得したい回答補助項目を含む回答項目のid

sentence:
: __string__ _(デフォルト: "")_
: 回答補助項目の文言

placeholder:
: __string__ _(デフォルト: "")_
: 回答補助項目のプレースホルダー

order_index:
: __integer__ _(デフォルト: 1)_
: 回答補助項目の順序

max_value:
: __integer__ _(デフォルト: null)_
: 回答補助項目の最大選択数

min_value:
: __integer__ _(デフォルト: null)_
: 回答補助項目の最小選択数

~~~
定義
POST https://creativesurvey.com/api/v1/answer_item/:answer_item_id/sub_items

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/answer_item/4337/sub_items \
-d "auth_token=YourAuthToken" \
-d "sub_item[sentence]=good"

レスポンス例
{
  "updated_at": "2014-05-09T19:06:16+09:00",
  "sentence": "good",
  "placeholder": "",
  "order_index": 0,
  "answer_type": 1,
  "attachable_id": 4471,
  "attachable_type": "AnswerItem",
  "created_at": "2014-05-09T19:06:16+09:00",
  "id": 2844,
  "inbox_id": 6,
  "max_value": null,
  "min_value": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
