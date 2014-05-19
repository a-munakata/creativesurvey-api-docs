---

category_name: randomizer
title: ランダム設定一覧の取得
method: index

---

# ランダム設定一覧の取得

## アンケートに指定されたランダム設定の一覧を取得します。

questionnaire_id _(必須)_:
: __integer__
: 取得するランダム設定を持つ質問表のid

~~~
定義
GET https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/randomizers

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/randomizers \
-d "auth_token=YourAuthToken"

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

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

