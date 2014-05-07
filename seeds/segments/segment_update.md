---

category_name: segment
title: セグメント設定の更新
priority: 996

---

# セグメント設定の更新

## セグメント設定を更新します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

segment_id*:
: __integer__
: セグメントのid

name*:
: __string__
: セグメント名

due_start:
: __timestamp__ _(デフォルト: null)_
: 回答日時によってセグメントする際の開始日
: その日の回答を含めます。

due_end:
: __timestamp__ _(デフォルト: null)_
: 回答日時によってセグメントする際の終了日
: その日の回答を含めます。

disallow_duplicate_ip:
: __boolean__ _(デフォルト: false)_
: 同一IPを許可するかどうか
: trueに設定した場合、同一のIPからの回答を含めません。

allow_screen_out:
: __boolean__ _(デフォルト: false)_
: スクリーンアウトした回答者を含めるかどうか
: trueに設定した場合、スクリーンアウトした回答者も含めます。

is_uncompleted:
: __boolean__ _(デフォルト: false)_
: 未回答項目を含めるかどうか
: trueに設定した場合、回答が終了していない回答者も含めます。



~~~
定義
PUT https://creativesurvey.com/api/v1/segments/:segment_id

リクエスト例
curl -X PUT https://creativesurvey.com/api/v1/segments/117 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "segment[name]=30代男性"

レスポンス例
{
  "updated_at": "2014-04-23T23:32:32+09:00",
  "inbox_id": 6,
  "id": 117,
  "due_start": null,
  "due_end": null,
  "disallow_duplicate_ip": false,
  "created_at": "2014-04-23T17:28:35+09:00",
  "allow_screen_out": false,
  "is_uncompleted": false,
  "name": "30代男性",
  "survey_id": 520
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

