---

category_name: randomizer
title: ランダム設定の取得
action: show

---

# ランダム設定の取得

## アンケートに指定されたランダム設定を個別で取得します。

`GET https://creativesurvey.com/api/v1/randomizers/:id`

id _(必須)_:
: __integer__
: ランダム設定のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/randomizers/481 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-10-31T17:08:43+09:00",
  "end_index": 3,
  "id": 481,
  "inbox_id": 6,
  "is_valid": true,
  "order_index": 0,
  "questionnaire_id": 7698,
  "start_index": 0,
  "step_num": 1,
  "updated_at": "2014-10-31T17:08:43+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

