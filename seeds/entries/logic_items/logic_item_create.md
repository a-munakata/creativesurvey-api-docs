---

category_name: logic_item
title: 分岐アイテムの作成
method: create

---

# 分岐アイテムの作成

## 分岐アイテムを作成します。

`POST https://creativesurvey.com/api/v1/logics/:id/logic_items`

id _(必須)_:
: __integer__
: 対象の分岐設定ids

condition:
: __string__ _(デフォルト: null)_
: 条件と一致するかしないかを、"=="または"!="で指定します。

order_index:
: __integer__ _(デフォルト: null)_
: 分岐ロジックの順序を0から始まる整数で指定します。

question_id:
: __integer__ _(デフォルト: null)_
: 分岐設定の条件対象となる質問のid

answer_item_id:
: __integer__ _(デフォルト: null)_
: 分岐設定の条件対象となる回答項目のid

sub_item_id:
: __integer__ _(デフォルト: null)_
: 分岐設定の条件対象となる回答補助項目のid

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/logics/139/logic_items \
-u "auth_token=YourAuthToken": \
-d "logic_item[condition]===" \
-d "logic_item[question_id]=1914" \
-d "logic_item[answer_item_id]=4487" \
-d "logic_item[sub_item_id]=2868"

レスポンス例
{
  "logic_id": 139,
  "id": 105,
  "question_id": 1914,
  "order_index": null,
  "condition": "==",
  "sub_item_id": 2868,
  "answer_item_id": 4487
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

