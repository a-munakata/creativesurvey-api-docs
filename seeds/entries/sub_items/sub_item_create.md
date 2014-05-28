---

category_name: sub_item
title: 回答補助項目の作成
action: create
parent_klass: question

---

# 回答補助項目の作成

## [質問(question)](#question)に回答補助項目を作成します。

`GET https://creativesurvey.com/api/v1/questions/:id/sub_items`

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
$ curl -X GET https://creativesurvey.com/api/v1/questions/1900/sub_items \
-d "auth_token=YourAuthToken" \
-d "sub_item[placeholder]=insert text here"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "id": 2864,
  "max_value": null,
  "min_value": null,
  "order_index": 0,
  "answer_type": 1,
  "placeholder": "insert text here",
  "sentence": ""
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
