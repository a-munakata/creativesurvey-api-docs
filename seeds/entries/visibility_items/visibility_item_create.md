---

category_name: visibility_item
title: 表示アイテムの作成
action: create

---

# 表示アイテムの作成

## 表示アイテムを作成します。

`POST https://creativesurvey.com/api/v1/visibilities/:id/visibility_items`

visibility_id _(必須)_:
: __integer__
: 作成する表示アイテムを含む表示ロジックのid

question_id:
: __integer__ _(デフォルト: null)_
: 条件に指定する質問id

order_index:
: __integer__ _(デフォルト: null)_
: 表示アイテムの順序
: 0から始まる整数で指定します。

condition:
: __string__ _(デフォルト: null)_
: 条件に一致するかしないかを"=="もしくは"!="で指定します。

answer_item_id:
: __integer__ _(デフォルト: null)_
: 条件に指定する回答項目のid

sub_item_id:
: __integer__ _(デフォルト: null)_
: 条件に指定する回答補助項目のid

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/visibilities/576/visibility_items \
-d "auth_token=sample_auth_token" \
-d "visibility_item[question_id]=5188" \
-d "visibility_item[order_index]=3" \
-d "visibility_item[condition]=!=" \
-d "visibility_item[answer_item_id]=9681"

レスポンス例
{
  "answer_item_id": 9681,
  "condition": "!=",
  "created_at": "2014-10-31T19:57:16+09:00",
  "id": 402,
  "inbox_id": 6,
  "order_index": 3,
  "question_id": 5188,
  "sub_item_id": null,
  "updated_at": "2014-10-31T19:57:16+09:00",
  "visibility_id": 576
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

