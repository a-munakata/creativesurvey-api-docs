---

category_name: logic_action
title: 分岐アクションの更新
action: show

---

# 分岐アクションの更新

## 分岐アクションを更新します。

`PUT https://creativesurvey.com/api/v1/logics/:id/logic_actions/`

id _(必須)_:
: __integer__
: 更新する分岐設定のid

message:
: __string__ _(デフォルト: null)_
: 分岐された際に表示されるフラッシュメッセージ

question_id:
: __integer__ _(デフォルト: null)_
: 分岐設定の条件に一致した際にスキップされる質問のid

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/logics/766/logic_actions/ \
-d "auth_token=sample_auth_token" \
-d "logic_action[message]=Skipped"

レスポンス例
{
  "action_type": null,
  "created_at": "2014-11-17T14:20:10+09:00",
  "id": 768,
  "inbox_id": 6,
  "logic_id": 766,
  "message": "Skipped",
  "question_id": 5721,
  "updated_at": "2014-11-17T14:42:42+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

