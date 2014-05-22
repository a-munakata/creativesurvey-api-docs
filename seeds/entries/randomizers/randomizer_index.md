---

category_name: randomizer
title: ランダム設定一覧の取得
method: index

---

# ランダム設定一覧の取得

## アンケートに指定されたランダム設定の一覧を取得します。

`GET https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/randomizers`

id _(必須)_:
: __integer__
: 取得するランダム設定を持つ質問表のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/randomizers \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
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

