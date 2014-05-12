---

category_name: sub_item
title: 回答補助項目一覧の取得　(質問から)
priority: 999

---

# 回答補助項目一覧の取得(質問から)

## 回答補助項目一覧を取得します。回答補助項目はQuestion(質問)とAnswerItem(回答項目)のいずれかが親になるため、その親から参照します。

## Question(質問)の回答補助項目一覧を取得する
auth_token*:
: __string__
: 認証時に必要なトークンです。

question_id*:
: __integer__
: 取得したい回答補助項目を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/sub_items

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/1900/sub_items \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "updated_at": "2014-05-08T16:02:53+09:00",
    "sentence": "book",
    "placeholder": "",
    "order_index": 1,
    "answer_type": 9,
    "attachable_id": 1900,
    "attachable_type": "Question",
    "created_at": "2014-05-08T14:22:12+09:00",
    "id": 2820,
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
