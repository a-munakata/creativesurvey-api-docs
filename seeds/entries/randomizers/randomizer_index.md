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
curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/randomizers \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "updated_at": "2014-04-22T11:41:12+09:00",
    "step_num": 1,
    "created_at": "2014-04-22T11:41:01+09:00",
    "end_index": 1,
    "id": 36,
    "inbox_id": 6,
    "is_valid": true,
    "order_index": 0,
    "questionnaire_id": 508,
    "start_index": 0
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

