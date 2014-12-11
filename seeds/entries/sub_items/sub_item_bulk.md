---

category_name: sub_item
title: 複数の回答補助項目を一括で作成
action: bulk

---

# 複数の回答補助項目を一括で作成

## 複数の回答補助項目を一括で作成します。

`POST https://creativesurvey.com/api/v1/questions/:id/sub_items/bulk`

id _(必須)_:
: __integer__
: 質問ID

sub_items:
: 回答補助項目の配列をパラメータとして渡します。
: {sub_items:[{sub_item_attrs}, {...}, {...}]}
: sub_itemの作成に必要なパラメータは[sub_item#create](#sub_item_create)を参照してください。


##### 例ではjsonを渡しています。この場合、auth_tokenを-dオプションで渡すと、auth_tokenパラメータがquestionsパラメータに含まれてしまい、JSONがうまくパースされません。jsonでパラメータを渡す場合は-uオプションを使ってauth_tokenを渡す事で、正しくパラメータが解釈されます。


~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/:id/sub_items/bulk \
-u "sample_auth_token": \
-H "Content-Type: application/json" \
-d '{"sub_items": [{"sentence": "A", "order_index": 1}, {"sentence": "B", "order_index": 2}, {"sentence": "C", "order_index": 3}]}'

レスポンス例
{
  "sub_items": [
    {
      "answer_type": 11,
      "attachable_id": 5899,
      "attachable_type": "Question",
      "created_at": "2014-12-10T21:36:14+09:00",
      "id": 9193,
      "inbox_id": 6,
      "max_value": null,
      "min_value": null,
      "order_index": 1,
      "placeholder": "",
      "sentence": "A",
      "updated_at": "2014-12-10T21:36:14+09:00",
      "name": "A",
      "creative_chain": {
        "attachable_id": 9193,
        "attachable_type": "SubItem",
        "created_at": "2014-12-10T21:36:14+09:00",
        "creative_id": null,
        "id": 33940,
        "inbox_id": 6,
        "updated_at": "2014-12-10T21:36:14+09:00"
      }
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

