---

category_name: randomizer
title: ランダム設定一覧の取得
action: index

---

# ランダム設定一覧の取得

## アンケートに指定されたランダム設定の一覧を取得します。

`GET https://creativesurvey.com/api/v1/questionnaires/:id/randomizers`

id _(必須)_:
: __integer__
: 取得するランダム設定を持つ質問表のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/randomizers \
-d "auth_token=YourAuthToken"
レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "questionnaire_id": 508,
    "id": 40,
    "order_index": 0,
    "step_num": 1,
    "start_index": 0,
    "is_valid": true,
    "end_index": 3
  },
  {...},
  {...}
]

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

