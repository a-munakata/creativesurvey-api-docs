---

category_name: logic
title: 分岐設定の削除
action: delete

---

# 分岐設定の削除

## 分岐設定を削除します。

`DELETE https://creativesurvey.com/api/v1/api/v1/logics/:id`

logic_id _(必須)_:
: __integer__
: 削除する分岐設定のid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/logics/139 \
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

