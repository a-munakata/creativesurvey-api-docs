---

category_name: randomizer
title: ランダム設定の更新
priority: 999

---

# ランダム設定の更新

## ランダム設定の更新についてです。

auth_token*:
: __string__
: 認証時に必要なトークンです。

randomizer_id*:
: __integer__
: ランダム設定のid

randomizer[:start_index]:
: __integer__
: 何問目からランダムを設定するか指定します。

randomizer[:end_index]:
: __integer__
: 何問目までランダムを設定するか指定します。

randomizer[step_num]:
: __integer__
: ランダムを設定するステップ数
: start_indexからend_indexまでで何問を抽出するかを設定するものです。


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

