---

category_name: randomizer
title: ランダム設定の作成
method: create

---

# ランダム設定の作成

## 新しいランダム設定を作成します。

questionnaire_id _(必須)_:
: __integer__
: ランダム設定を指定する質問表のid

step_num _(必須)_:
: __integer__
: ランダムを設定するステップ数
: start_indexからend_indexまでで何問を抽出するかを設定するものです。

start_index:
: __integer__ _(デフォルト: null)_
: 何問目からランダムを設定するか指定します。
: indexは0から始まる整数です。

end_index:
: __integer__ _(デフォルト: null)_
: 何問目までランダムを設定するか指定します。
: indexは0から始まる整数です。

is_valid:
: __boolean__ _(デフォルト: true)_
: 有効かどうか

order_index:
: __integer__ _(デフォルト: 0)_
: ランダマイズ設定の順序を0から始まる整数で指定します。

~~~
定義
POST https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/randomizers

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questionnaires/508/randomizers \
-d "auth_token=YourAuthToken" \
-d "randomizer[step_num]=1" \
-d "randomizer[start_index]=0" \
-d "randomizer[end_index]=3"

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

