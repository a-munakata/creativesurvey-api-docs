---

category_name: segment
title: セグメント設定一覧を取得
priority: 999

---

# セグメント設定一覧を取得

## セグメント設定一覧を取得します。セグメントを設定すると、集計結果をセグメント条件によって分けることが出来ます。

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 対象のセグメントを持つアンケートのid

~~~
定義
GET https://creativesurvey.com/api/v1/surveys/:survey_id/segments

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/surveys/520/segments \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "updated_at": "2014-04-25T20:17:00+09:00",
    "unique_id": null,
    "is_making": null,
    "inbox_id": 6,
    "id": 116,
    "due_start": null,
    "due_end": null,
    "disallow_duplicate_ip": true,
    "created_at": "2014-04-23T17:27:53+09:00",
    "allow_screen_out": true,
    "is_public": null,
    "is_raw_data_error": null,
    "is_uncompleted": true,
    "make_at": null,
    "name": "女性",
    "pass_phrase": null,
    "raw_data_error": null,
    "survey_id": 520
  },
  {...},
  {...}
]

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

