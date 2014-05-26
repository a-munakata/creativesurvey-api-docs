---

category_name: logic
title: 分岐設定の削除
method: delete

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
-u "auth_token=YourAuthToken":

レスポンス例
{
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

