---

category_name: randomizer
title: ランダム設定の取得
method: show

---

# ランダム設定の取得

## アンケートに指定されたランダム設定を個別で取得します。

`GET https://creativesurvey.com/api/v1/randomizers/:id`

id _(必須)_:
: __integer__
: ランダム設定のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/randomizers/40 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "questionnaire_id": 508,
  "id": 40,
  "order_index": 0,
  "step_num": 1,
  "start_index": 0,
  "is_valid": true,
  "end_index": 3
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

