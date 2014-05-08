---

category_name: randomizer
title: ランダム設定の作成
priority: 998

---

# ランダム設定の作成

## 新しいランダム設定を作成します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

questionnaire_id*:
: __integer__
: ランダム設定を指定する質問表のid

start_index:
: __integer__
: 何問目からランダムを設定するか指定します。
: indexは0から始まる整数です。

end_index:
: __integer__
: 何問目までランダムを設定するか指定します。
: indexは0から始まる整数です。

step_num:
: __integer__
: ランダムを設定するステップ数
: start_indexからend_indexまでで何問を抽出するかを設定するものです。


~~~
定義
POST https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/randomizers

リクエスト例
curl -X POST https://creativesurvey.com/api/v1/questionnaires/508/randomizers \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "randomizer[step_num]=1" \
-d "randomizer[start_index]=0" \
-d "randomizer[end_index]=3"

レスポンス例
{
  "updated_at": "2014-04-22T16:19:38+09:00",
  "step_num": 1,
  "created_at": "2014-04-22T16:19:38+09:00",
  "end_index": 3,
  "id": 40,
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

