---

category_name: logic_action
title: 分岐アクションの取得
action: show

---

# 分岐アクションの取得

## 分岐アクションを個別に取得します。

`GET https://creativesurvey.com/api/v1/logics/:id/logic_actions`

id _(必須)_:
: __integer__
: 取得する分岐設定のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/logics/766/logic_actions \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "action_type": null,
  "created_at": "2014-11-17T14:20:10+09:00",
  "id": 768,
  "inbox_id": 6,
  "logic_id": 766,
  "message": "FIN",
  "question_id": 5721,
  "updated_at": "2014-11-17T14:20:24+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

