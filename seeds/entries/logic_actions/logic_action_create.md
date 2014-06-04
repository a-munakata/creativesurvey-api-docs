---

category_name: logic_action
title: 分岐アクションの作成
action: create

---

# 分岐アクションの作成

## 分岐アクションを作成します。

`POST https://creativesurvey.com/api/v1/logics/:id/logic_items`

id _(必須)_:
: __integer__
: 分岐アクションを作成するロジックのid

message:
: __string__ _(デフォルト: null)_
: 分岐された際に表示されるフラッシュメッセージ

question_id:
: __integer__ _(デフォルト: null)_
: 分岐設定の条件に一致した際にスキップされる質問のid

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/logics/:id/logic_items \
-d "auth_token=YourAuthToken" \
-d "logic_action[message]=New Message" \
-d "logic_action[question_id]=1878"

レスポンス例
{
  "logic_id": 144,
  "id": 146,
  "message": "New Message",
  "question_id": 1878,
  "action_type": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

