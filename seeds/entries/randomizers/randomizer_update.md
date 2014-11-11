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
$ curl -X PUT https://creativesurvey.com/api/v1/randomizers/481 \
-d "auth_token=sample_auth_token" \
-d "randomizer[step_num]=2" \
-d "randomizer[end_index]=4"

レスポンス例
{
  "created_at": "2014-10-31T17:08:43+09:00",
  "end_index": 4,
  "id": 481,
  "inbox_id": 6,
  "is_valid": true,
  "order_index": 0,
  "questionnaire_id": 7698,
  "start_index": 0,
  "step_num": 2,
  "updated_at": "2014-10-31T17:55:48+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

