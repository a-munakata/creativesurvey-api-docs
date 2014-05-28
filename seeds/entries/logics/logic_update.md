---

category_name: logic
title: 分岐設定の更新
action: show

---

# 分岐設定の更新

## 分岐設定を更新します。

`PUT https://creativesurvey.com/api/v1/api/v1/logics/:id`

id _(必須)_:
: __integer__
: 更新する分岐設定のid

order_index:
: __integer__ _(デフォルト: 0)_
: 分岐設定の順序
: 0から始まる整数で指定します。

is_valid:
: __boolean__ _(デフォルト: true)_
: 有効かどうか

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/logics/138 \
-d "auth_token=YourAuthToken" \
-d "logic[order_index]=3"

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

