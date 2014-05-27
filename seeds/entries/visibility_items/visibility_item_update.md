---

category_name: visibility_item
title: 表示アイテムの更新
action: update

---

# 表示アイテムの更新

## 表示アイテムを更新します。

`PUT https://creativesurvey.com/api/v1/visibility_items/:id`

id _(必須)_:
: __integer__
: 更新する表示アイテムのid

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
$ curl -X PUT https://creativesurvey.com/api/v1/visibility_items/102 \
-d "auth_token=YourAuthToken" \
-d "visibility_item[question_id]=1916" \
-d "visibility_item[order_index]=3" \
-d "visibility_item[condition]=!="

レスポンス例
{
  "visibility_id": 71,
  "id": 102,
  "question_id": 1916,
  "order_index": 3,
  "condition": "!=",
  "sub_item_id": null,
  "answer_item_id": 4493
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

