---

category_name: questionnaire_variable
title: 置き換え変数設定の作成
action: create

---

# 置き換え変数設定の作成

## アンケートの置き換え変数設定を作成します。

`POST https://creativesurvey.com/api/v1/questionnaires/:id/questionnaire_variables`

id _(必須)_:
: __integer__
: 置き換え変数設定を取得したい質問表のid

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

order_index:
: __integer__ _(デフォルト: null)_
: 置き換え変数設定の順序を、0から始まる整数で指定します。

is_separate:
: __boolean__ _(デフォルト: null)_
: 回答項目指定をするかどうか
: trueにした場合、設定した回答項目の指定が有効になります。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questionnaires/510/questionnaire_variables \
-d "auth_token=YourAuthToken" \
-d "questionnaire_variable[target]=color" \
-d "questionnaire_variable[result_id]=1831" \
-d "questionnaire_variable[result_type]=1"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "questionnaire_id": 510,
  "id": 110,
  "sub_item_id": null,
  "result_type": "1",
  "result_value": null,
  "result_id": 1831,
  "target": "color",
  "order_index": null,
  "is_separate": null,
  "separator": null,
  "answer_item_id": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

