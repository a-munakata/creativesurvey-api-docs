---

category_name: sub_item
title: 回答補助項目一覧の取得
action: index
parent_klass: question

---

# 回答補助項目一覧の取得

## [質問(question)](#question)の回答補助項目一覧を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/sub_items`

id _(必須)_:
: __integer__
: 取得したい回答補助項目を含む質問のid

~~~

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
    "sentence": ""
  },
  {...},
  {...}
]  

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
