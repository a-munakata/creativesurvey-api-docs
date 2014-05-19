---

category_name: sub_item
title: 回答補助項目一覧の取得　(質問から)
method: index
parent_klass: question

---

# 回答補助項目一覧の取得(質問から)

## [質問(question)](#question)の回答補助項目一覧を取得します。

question_id _(必須)_:
: __integer__
: 取得したい回答補助項目を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/sub_items

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/1900/sub_items \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "id": 2820,
    "max_value": null,
    "min_value": null,
    "order_index": 1,
    "answer_type": 9,
    "placeholder": "",
    "sentence": "1"
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
