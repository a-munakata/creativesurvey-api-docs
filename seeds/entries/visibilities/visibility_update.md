---

category_name: visibility
title: 表示ロジックの更新
action: update

---

# 表示ロジックの更新

## 表示ロジックを更新します。

`GET https://creativesurvey.com/api/v1/visibilities/:id`

id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

order_index:
: __integer__ _(デフォルト: null)_
: 表示ロジックの順序を0から始まる整数で指定します。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/576 \
-d "visibility[order_index]=3" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-10-31T19:31:36+09:00",
  "id": 576,
  "inbox_id": 6,
  "order_index": 3,
  "question_id": 5189,
  "updated_at": "2014-10-31T19:31:53+09:00",
  "visibility_items": [
    {
      "answer_item_id": 9681,
      "condition": "==",
      "created_at": "2014-10-31T19:31:37+09:00",
      "id": 401,
      "inbox_id": 6,
      "order_index": null,
      "question_id": 5188,
      "sub_item_id": null,
      "updated_at": "2014-10-31T19:31:52+09:00",
      "visibility_id": 576
    }
  ],
  "visibility_targets": [
    {
      "answer_item_id": 9682,
      "created_at": "2014-10-31T19:31:36+09:00",
      "id": 861,
      "inbox_id": 6,
      "updated_at": "2014-10-31T19:31:53+09:00",
      "visibility_id": 576
    }
  ]
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

