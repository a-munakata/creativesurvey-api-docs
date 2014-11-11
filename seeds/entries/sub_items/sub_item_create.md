---

category_name: sub_item
title: 回答補助項目の作成
action: create
parent_klass: question

---

# 回答補助項目の作成

## [質問(question)](#question)に回答補助項目を作成します。

`POST https://creativesurvey.com/api/v1/questions/:id/sub_items`

id _(必須)_:
: __integer__
: 回答補助項目を作成する質問のid

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

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/5333/sub_items \
-d "auth_token=sample_auth_token" \
-d "sub_item[placeholder]=insert text here"

レスポンス例
{
  "answer_type": 1,
  "attachable_id": 5333,
  "attachable_type": "Question",
  "created_at": "2014-11-05T15:20:42+09:00",
  "id": 8806,
  "inbox_id": 6,
  "max_value": null,
  "min_value": null,
  "order_index": 0,
  "placeholder": "",
  "sentence": "",
  "updated_at": "2014-11-05T15:20:42+09:00",
  "name": "",
  "creative_chain": {
    "attachable_id": 8806,
    "attachable_type": "SubItem",
    "created_at": "2014-11-05T15:20:42+09:00",
    "creative_id": null,
    "id": 32074,
    "inbox_id": 6,
    "updated_at": "2014-11-05T15:20:42+09:00"
  }
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
