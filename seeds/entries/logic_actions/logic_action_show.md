---

category_name: logic_action
title: 分岐アクションの取得
action: show

---

# 分岐アクションの取得

## 分岐アクションを個別に取得します。

`GET https://creativesurvey.com/api/v1/logic_actions/:id`

id _(必須)_:
: __integer__
: 取得する分岐アクションのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/logic_actions/143 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "logic_id": 144,
  "id": 143,
  "message": "Skipped",
  "question_id": null,
  "action_type": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

