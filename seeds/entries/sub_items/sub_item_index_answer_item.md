---

category_name: sub_item
title: 回答補助項目一覧の取得　(回答項目から)
method: index

---

# 回答補助項目一覧の取得(回答項目から)

## 回答補助項目一覧を取得します。回答補助項目はQuestion(質問)とAnswerItem(回答項目)のいずれかが親になるため、その親から参照します。

## AnswerItem(回答項目)の回答補助項目一覧を取得する
answer_item_id _(必須)_:
: __integer__
: 取得したい回答補助項目を含む回答項目のid

~~~
定義
GET https://creativesurvey.com/api/v1/answer_item/:answer_item_id/sub_items

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/answer_item/4337/sub_items \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "updated_at": "2014-04-23T12:47:24+09:00",
    "sentence": "good",
    "placeholder": "",
    "order_index": 0,
    "answer_type": 7,
    "attachable_id": 4337,
    "attachable_type": "AnswerItem",
    "created_at": "2014-04-23T12:47:24+09:00",
    "id": 2753,
    "inbox_id": 6,
    "max_value": null,
    "min_value": null
  },
  {...},
  {...}
]  
  
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
