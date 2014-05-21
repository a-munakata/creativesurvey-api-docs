---

category_name: logic_action
title: 分岐アクションの取得
method: show

---

# 分岐アクションの取得

## 分岐アクションを個別に取得します。

logic_action_id _(必須)_:
: __integer__
: 取得する分岐アクションのid

~~~
定義
GET https://creativesurvey.com/api/v1/logic_actions/:logic_action_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/logic_actions/143 \
-d "auth_token=YourAuthToken"

レスポンス例
{
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

