---

category_name: segment_group
title: セグメントグループ一覧の取得
action: index

---

# セグメントグループ一覧の取得

## セグメントグループを一覧で取得します。

`GET https://creativesurvey.com/api/v1/segments/:id/segment_groups`

id _(必須)_:
: __integer__
: セグメントID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/7184/segment_groups \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "condition": 1,
    "created_at": "2014-12-10T18:29:46+09:00",
    "id": 4,
    "inbox_id": 6,
    "segment_id": 7184,
    "updated_at": "2014-12-10T18:29:46+09:00"
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

