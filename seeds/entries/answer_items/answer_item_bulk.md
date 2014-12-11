---

category_name: answer_item
title: 複数の回答項目を一括で作成
action: bulk

---

# 複数の回答項目を一括で作成

## 複数の回答項目を一括で作成します。

`POST https://creativesurvey.com/api/v1/questions/:id/answer_items/bulk`

id _(必須)_:
: __integer__
: 質問ID

answer_items:
: 回答項目の配列をパラメータとして渡します。
: {answer_items:[{answer_item_attrs}, {...}, {...}]}
: answer_itemの作成に必要なパラメータは[answer_item#create](#answer_item_create)を参照してください。

##### 例ではjsonを渡しています。この場合、auth_tokenを-dオプションで渡すと、auth_tokenパラメータがquestionsパラメータに含まれてしまい、JSONがうまくパースされません。jsonでパラメータを渡す場合は-uオプションを使ってauth_tokenを渡す事で、正しくパラメータが解釈されます。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/:id/answer_items/bulk \
-u "sample_auth_token": \
-H "Content-Type: application/json" \
-d '{"answer_items": [{"sentence": "A", "order_index": 1}, {"sentence": "B", "order_index": 2}, {"sentence": "C", "order_index": 3}]}'

レスポンス例
{
  "answer_items": [
    {
      "answer_type": 11,
      "created_at": "2014-12-10T21:39:23+09:00",
      "id": 11009,
      "inbox_id": 6,
      "is_impression": true,
      "is_multiline": false,
      "is_reject": null,
      "is_required": false,
      "max_value": null,
      "min_value": null,
      "order_index": 1,
      "placeholder": "",
      "question_id": 5899,
      "sentence": "A",
      "updated_at": "2014-12-10T21:39:23+09:00",
      "val": 0.5,
      "validation_pattern": "",
      "validation_type": null,
      "name": "A",
      "creative_chain": {
        "attachable_id": 11009,
        "attachable_type": "AnswerItem",
        "created_at": "2014-12-10T21:39:23+09:00",
        "creative_id": null,
        "id": 33943,
        "inbox_id": 6,
        "updated_at": "2014-12-10T21:39:23+09:00"
      },
      "sub_items": []
    },
    {...},
    {...}
  ]
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

