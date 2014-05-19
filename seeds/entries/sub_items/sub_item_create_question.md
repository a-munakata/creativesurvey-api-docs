---

category_name: sub_item
title: 回答補助項目の作成　　　(質問から)
method: create
parent_klass: question

---

# 回答補助項目の作成(質問から)

## 回答補助項目を作成します。回答補助項目はQuestion(質問)とAnswerItem(回答項目)下に作成することが出来ます。

## Question(質問)に回答補助項目を作成する
question_id _(必須)_:
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
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/sub_items

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/1900/sub_items \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-09T19:18:28+09:00",
  "sentence": "first_question",
  "placeholder": "",
  "order_index": 0,
  "answer_type": 18,
  "attachable_id": 1910,
  "attachable_type": "Question",
  "created_at": "2014-05-09T19:18:28+09:00",
  "id": 2848,
  "inbox_id": 6,
  "max_value": 3,
  "min_value": 1
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
