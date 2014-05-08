---

category_name: randomizer
title: ランダム設定の更新
priority: 996

---

# ランダム設定の更新

## ランダム設定の更新についてです。

auth_token*:
: __string__
: 認証時に必要なトークンです。

randomizer_id*:
: __integer__
: ランダム設定のid

step_num*:
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

inbox_id:
: __integer__
: ランダマイズ設定を含むインボックスのid

~~~
定義
PUT https://creativesurvey.com/api/v1/randomizers/:randomizers_id

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/randomizers/37 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "randomizer[step_num]=2" \
-d "randomizer[start_index]=1"


レスポンス例
{
  "updated_at": "2014-05-08T12:28:38+09:00",
  "step_num": 2,
  "created_at": "2014-05-08T12:24:11+09:00",
  "end_index": 5,
  "id": 37,
  "inbox_id": 6,
  "is_valid": true,
  "order_index": 0,
  "questionnaire_id": 519,
  "start_index": 1
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

