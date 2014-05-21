---

category_name: logic_action
title: 分岐アクションの更新
method: show

---

# 分岐アクションの更新

## 分岐アクションを更新します。

logic_action_id _(必須)_:
: __integer__
: 更新する分岐アクションのid

message:
: __string__ _(デフォルト: null)_
: 分岐された際に表示されるフラッシュメッセージ

question_id:
: __integer__ _(デフォルト: null)_
: 分岐設定の条件に一致した際にスキップされる質問のid

~~~
定義
PUT https://creativesurvey.com/api/v1/logic_actions/:logic_action_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/logic_actions/143 \
-d "auth_token=YourAuthToken" \
-d "logic_action[message]=Skipped Question"

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

