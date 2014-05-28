---

category_name: randomizer
title: ランダム設定の作成
action: create

---

# ランダム設定の作成

## 新しいランダム設定を作成します。

`POST https://creativesurvey.com/api/v1/questionnaires/:id/randomizers`

id _(必須)_:
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

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questionnaires/508/randomizers \
-d "auth_token=YourAuthToken" \
-d "randomizer[step_num]=1" \
-d "randomizer[start_index]=0" \
-d "randomizer[end_index]=3"

レスポンス例
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
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

