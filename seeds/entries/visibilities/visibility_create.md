---

category_name: visibility
title: 表示ロジックの作成
action: create

---

# 表示ロジックの作成

## 表示ロジックの作成

`POST https://creativesurvey.com/api/v1/questions/:id/visibilities`

question_id _(必須)_:
: __integer__
: 作成する分岐設定を含む質問のid

order_index:
: __integer__ _(デフォルト: null)_
: 表示ロジックの順序を0から始まる整数で指定します。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/5189/visibilities \
-d "visibility[order_index]=5" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-10-31T19:41:20+09:00",
  "id": 577,
  "inbox_id": 6,
  "order_index": 5,
  "question_id": 5189,
  "updated_at": "2014-10-31T19:41:20+09:00",
  "visibility_items": [],
  "visibility_targets": [
    {
      "answer_item_id": null,
      "created_at": "2014-10-31T19:41:20+09:00",
      "id": 862,
      "inbox_id": 6,
      "updated_at": "2014-10-31T19:41:20+09:00",
      "visibility_id": 577
    }
  ]
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

