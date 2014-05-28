---

category_name: logic
title: 分岐設定の作成
action: create

---

# 分岐設定の作成

## 分岐設定を作成します。

`POST https://creativesurvey.com/api/v1/questions/:id/logics`

id _(必須)_:
: __integer__
: 対象の質問id

order_index:
: __integer__ _(デフォルト: 0)_
: 分岐設定の順序
: 0から始まる整数で指定します。

is_valid:
: __boolean__ _(デフォルト: true)_
: 有効かどうか

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/1876/logics \
-d "logic[order_index]=3" \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "question_id": 1876,
  "id": 139,
  "order_index": 3,
  "is_valid": true,
  "destination_id": null,
  "answer_item_id": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

