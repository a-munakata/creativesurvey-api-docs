---

category_name: questionnaire_variable
title: 置き換え変数設定の更新
action: update

---

# 置き換え変数設定の更新

## アンケートの置き換え変数設定を更新します。

`PUT https://creativesurvey.com/api/v1/questionnaire_variables/:id`

id _(必須)_:
: __integer__
: アップデートする置き換え変数設定のid

result_type _(必須)_:
: __integer__ _(デフォルト: null)_
: 置き換え方式を1か2で指定します。
: 1: "回答をテキストに置き換える"
: 2: "対象テキストを置き換える"

target:
: __string__ _(デフォルト: null)_
: 対象テキスト。
: 置き換え変数で置き換わる対象となるテキストを指定します。

result_id:
: __integer__ _(デフォルト: null)_
: 回答される質問のidを指定します。
: ここで指定された質問の回答が、対象テキストに置換されます。

result_value:
: __string__ _(デフォルト: "")_
: 対象テキストを置き換える設定をした際の、置き換えるテキスト。

separator:
: __string__ _(デフォルト: null)_
: 代入すべき回答テキストが複数だった場合に指定するセパレータ
: 回答テキストが『A』と『B』という二つだった場合、セパレータに『と』と入力していれば『AとB』と表示され、『&』と入力していれば『A&B』と表示されます。

answer_item_id:
: __integer__ _(デフォルト: null)_
: 対象となる回答項目のid

sub_item_id:
: __integer__ _(デフォルト: null)_
: 対象となる回答補助項目のid

order_index:
: __integer__ _(デフォルト: null)_
: 置き換え変数設定の順序を、0から始まる整数で指定します。

is_separate:
: __boolean__ _(デフォルト: null)_
: 回答項目指定をするかどうか
: trueにした場合、設定した回答項目の指定が有効になります。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/questionnaire_variables/602 \
-d "auth_token=sample_auth_token" \
-d "questionnaire_variable[target]=question_result" \
-d "questionnaire_variable[result_value]=hoge"

レスポンス例
{
  "answer_item_id": null,
  "created_at": "2014-11-05T16:42:30+09:00",
  "id": 602,
  "inbox_id": 6,
  "is_separate": null,
  "order_index": 1,
  "questionnaire_id": 7749,
  "result_id": 5428,
  "result_type": "1",
  "result_value": "hoge",
  "separator": null,
  "sub_item_id": null,
  "target": "question_result",
  "updated_at": "2014-11-05T16:50:21+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

