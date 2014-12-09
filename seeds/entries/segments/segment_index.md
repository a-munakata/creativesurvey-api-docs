---

category_name: segment
title: セグメント設定一覧を取得
action: index

---

# セグメント設定一覧を取得

## セグメント設定一覧を取得します。セグメントを設定すると、集計結果をセグメント条件によって分けることが出来ます。

`GET https://creativesurvey.com/api/v1/surveys/:id/segments`

id _(必須)_:
: __integer__
: 対象のセグメントを持つアンケートのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7711/segments \
-d "auth_token=sample_auth_token"

レスポンス例
[
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
    "name": "test",
    "pass_phrase": null,
    "raw_data_error": null,
    "survey_id": 7711,
    "unique_id": null,
    "updated_at": "2014-10-31T16:40:39+09:00"
  },
  {...},
  {...}
]

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

