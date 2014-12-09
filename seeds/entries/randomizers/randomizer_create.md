---

category_name: randomizer
title: ランダム設定の作成
action: create

---

# ランダム設定の作成

## 新しいランダム設定を作成します。

`POST https://creativesurvey.com/api/v1/surveys/:id/questionnaire/randomizers`

id _(必須)_:
: __integer__
: ランダム設定を指定する質問票のid

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

order_index:
: __integer__ _(デフォルト: 0)_
: ランダマイズ設定の順序を0から始まる整数で指定します。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/7711/questionnaire/randomizers \
-d "auth_token=sample_auth_token" \
-d "randomizer[step_num]=1" \
-d "randomizer[start_index]=0" \
-d "randomizer[end_index]=3"

レスポンス例
{
  "created_at": "2014-10-31T17:08:47+09:00",
  "end_index": 3,
  "id": 482,
  "inbox_id": 6,
  "is_valid": true,
  "order_index": 0,
  "questionnaire_id": 7698,
  "start_index": 0,
  "step_num": 1,
  "updated_at": "2014-10-31T17:08:47+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

