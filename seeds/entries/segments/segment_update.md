---

category_name: segment
title: セグメント設定の更新
action: update

---

# セグメント設定の更新

## セグメント設定を更新します。

`PUT https://creativesurvey.com/api/v1/segments/:id`

id _(必須)_:
: __integer__
: セグメントのid

name _(必須)_:
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

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/segments/774 \
-d "auth_token=sample_auth_token" \
-d "segment[name]=30代男性"

レスポンス例
{
  "allow_screen_out": false,
  "created_at": "2014-10-31T16:40:27+09:00",
  "disallow_duplicate_ip": false,
  "due_end": null,
  "due_start": null,
  "id": 774,
  "inbox_id": 6,
  "is_making": null,
  "is_public": null,
  "is_raw_data_error": null,
  "is_uncompleted": false,
  "make_at": null,
  "name": "30代男性",
  "pass_phrase": null,
  "raw_data_error": null,
  "survey_id": 7711,
  "unique_id": null,
  "updated_at": "2014-10-31T16:44:44+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

