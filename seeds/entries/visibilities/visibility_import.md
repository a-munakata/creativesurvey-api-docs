---

category_name: visibility
title: 複数の表示設定を一括更新
action: import

---

# 複数の表示設定を一括更新

## 複数の表示設定を一括で更新します。

`PUT https://creativesurvey.com/api/v1/questions/:id/visibilities/import`

id _(必須)_:
: __integer__
: 対象の質問id

logics:
: 分岐設定の配列をパラメータとして渡します。
: {logics: [{logic_params}, {...}, {...}]}
: 分岐設定オブジェクトの中には、[分岐アイテム](#logic_item)と[分岐アクション](#logic_action)も含めて設定する事が可能です。


##### 例ではjsonを渡しています。この場合、auth_tokenを-dオプションで渡すと、auth_tokenパラメータがquestionsパラメータに含まれてしまい、JSONがうまくパースされません。jsonでパラメータを渡す場合は-uオプションを使ってauth_tokenを渡す事で、正しくパラメータが解釈されます。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/questions/5892/visibilities/import \
-u "sample_auth_token": \
-H "Content-Type: application/json" \
-d '{"visibilities": [{"id": 584, "visibility_items": [ {"id":407, "condition": "!="} ] }]}'


レスポンス例
[
  {
    "created_at": "2014-12-10T21:42:29+09:00",
    "id": 584,
    "inbox_id": 6,
    "order_index": 0,
    "question_id": 5885,
    "updated_at": "2014-12-10T21:42:52+09:00",
    "visibility_items": [
      {
        "answer_item_id": 10973,
        "condition": "!=",
        "created_at": "2014-12-10T21:42:31+09:00",
        "id": 407,
        "inbox_id": 6,
        "order_index": null,
        "question_id": 5884,
        "sub_item_id": null,
        "updated_at": "2014-12-10T21:53:07+09:00",
        "visibility_id": 584
      }
    ],
    "visibility_targets": [
      {
        "answer_item_id": 10975,
        "created_at": "2014-12-10T21:42:29+09:00",
        "id": 871,
        "inbox_id": 6,
        "updated_at": "2014-12-10T21:42:52+09:00",
        "visibility_id": 584
      }
    ]
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

