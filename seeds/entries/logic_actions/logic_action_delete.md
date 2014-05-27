---

category_name: logic_action
title: 分岐アクションの削除
action: delete

---

# 分岐アクションの削除

## 分岐アクションを削除します。

`DELETE https://creativesurvey.com/api/v1/logic_actions/:id`

id _(必須)_:
: __integer__
: 削除する分岐アクションのid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/logic_actions/143 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "logic_id": 144,
  "id": 143,
  "message": "Skipped Question",
  "question_id": null,
  "action_type": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

