---

category_name: segment
title: セグメント設定の作成
action: create

---

# セグメント設定の作成

## セグメント設定を作成します。作成したセグメントは、アンケートから設定します。セグメントの適用については[こちら](#survey_update)を参照ください。

`POST https://creativesurvey.com/api/v1/surveys/:id/segments`

id _(必須)_:
: __integer__
: セグメントを作成するアンケートのid

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
$ curl -X POST https://creativesurvey.com/api/v1/surveys/520/segments \
-d "auth_token=YourAuthToken" \
-d "segment[name]=40代女性" \
-d "segment[disallow_duplicate_ip]=true" \
-d "segment[due_start]=20140427" \
-d "segment[due_end]=20140430" \
-d "segment[is_uncompleted]=true"

レスポンス例
{
  "updated_at": "2014-05-08T19:48:59+09:00",
  "unique_id": null,
  "is_making": null,
  "inbox_id": 6,
  "id": 131,
  "due_start": "2014-04-27T00:00:00+09:00",
  "due_end": "2014-04-30T00:00:00+09:00",
  "disallow_duplicate_ip": true,
  "created_at": "2014-05-08T19:48:59+09:00",
  "allow_screen_out": false,
  "is_public": null,
  "is_raw_data_error": null,
  "is_uncompleted": true,
  "make_at": null,
  "name": "40代女性",
  "pass_phrase": null,
  "raw_data_error": null,
  "survey_id": 520
}


セグメント名が入力されていない場合
{
  "name": [
    "を入力してください。"
  ]
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

