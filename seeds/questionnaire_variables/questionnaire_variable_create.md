---

category_name: questionnaire_variable
title: 置き換え変数設定の作成
priority: 998

---

# 置き換え変数設定の作成

## アンケートの置き換え変数設定を作成します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

questionnaire_id*:
: __integer__
: 置き換え変数設定を取得したい質問表のid

result_type*:
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

~~~
定義
POST https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/questionnaire_variables

リクエスト例
curl -X POST https://creativesurvey.com/api/v1/questionnaires/510/questionnaire_variables \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "questionnaire_variable[target]=color" \
-d "questionnaire_variable[result_id]=1831" \
-d "questionnaire_variable[result_type]=1"

レスポンス例
{
  "updated_at": "2014-04-22T18:08:36+09:00",
  "target": "color",
  "sub_item_id": null,
  "separator": null,
  "result_value": null,
  "result_type": "1",
  "answer_item_id": null,
  "created_at": "2014-04-22T18:08:36+09:00",
  "id": 103,
  "inbox_id": 6,
  "is_separate": null,
  "order_index": null,
  "questionnaire_id": 510,
  "result_id": 1831
}

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

