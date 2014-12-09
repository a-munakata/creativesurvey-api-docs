---

category_name: logic_item
title: 分岐アイテムの更新
action: update

---

# 分岐アイテムの更新

## 分岐アイテムを更新します。

`PUT https://creativesurvey.com/api/v1/logic_items/:id`

id _(必須)_:
: __integer__
: 更新する分岐アイテムのid

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
$ curl -X PUT https://creativesurvey.com/api/v1/logic_items/615 \
-d "auth_token=sample_auth_token" \
-d "logic_item[condition]=!="\
-d "logic_item[order_index]=3"

レスポンス例
{
  "answer_item_id": 10668,
  "condition": "!=",
  "created_at": "2014-11-17T14:20:14+09:00",
  "id": 615,
  "inbox_id": 6,
  "logic_id": 766,
  "order_index": 3,
  "question_id": 5722,
  "sub_item_id": null,
  "updated_at": "2014-11-17T14:26:21+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

