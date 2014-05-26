---

category_name: randomizer
title: ランダム設定の削除
method: delete

---

# ランダム設定の削除

## ランダム設定を削除します。

`DELETE https://creativesurvey.com/api/v1/randomizers/:id`

id _(必須)_:
: __integer__
: ランダム設定のid

~~~

リクエスト例
$ curl -X DELTE https://creativesurvey.com/api/v1/randomizers/40 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "questionnaire_id": 508,
  "id": 40,
  "order_index": 0,
  "step_num": 2,
  "start_index": 0,
  "is_valid": true,
  "end_index": 4
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

