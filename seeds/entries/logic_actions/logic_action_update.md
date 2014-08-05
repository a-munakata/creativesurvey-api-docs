---

category_name: logic_action
title: 分岐アクションの更新
action: show

---

# 分岐アクションの更新

## 分岐アクションを更新します。

`PUT https://creativesurvey.com/api/v1/logic_actions/:id`

id _(必須)_:
: __integer__
: 更新する分岐アクションのid

message:
: __string__ _(デフォルト: null)_
: 分岐された際に表示されるフラッシュメッセージ

question_id:
: __integer__ _(デフォルト: null)_
: 分岐設定の条件に一致した際にスキップされる質問のid

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/logic_actions/143 \
-d "auth_token=sample_auth_token" \
-d "logic_action[message]=Skipped Question"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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

