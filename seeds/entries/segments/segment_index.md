---

category_name: segment
title: セグメント設定一覧を取得
method: index

---

# セグメント設定一覧を取得

## セグメント設定一覧を取得します。セグメントを設定すると、集計結果をセグメント条件によって分けることが出来ます。

`GET https://creativesurvey.com/api/v1/surveys/:id/segments`

id _(必須)_:
: __integer__
: 対象のセグメントを持つアンケートのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/520/segments \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
    "survey_id": 520,
    "id": 116,
    "name": "女性",
    "due_end": null,
    "due_start": null,
    "is_uncompleted": true,
    "disallow_duplicate_ip": true,
    "allow_screen_out": true,
    "pass_phrase": null,
    "is_public": null
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

