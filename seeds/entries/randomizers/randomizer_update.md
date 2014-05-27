---

category_name: randomizer
title: ランダム設定の更新
action: update

---

# ランダム設定の更新

## ランダム設定の更新についてです。

`PUT https://creativesurvey.com/api/v1/randomizers/:id`

id _(必須)_:
: __integer__
: ランダム設定のid

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
$ curl -X PUT https://creativesurvey.com/api/v1/randomizers/40 \
-d "auth_token=YourAuthToken" \
-d "randomizer[step_num]=2" \
-d "randomizer[end_index]=4"


レスポンス例
{
  "questionnaire_id": 508,
  "id": 40,
  "order_index": 0,
  "step_num": 2,
  "start_index": 0,
  "is_valid": true,
  "end_index": 4
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

