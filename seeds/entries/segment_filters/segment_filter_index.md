---

category_name: segment_filter
title: フィルター一覧の取得
action: index

---

# フィルター一覧の取得

## セグメントのフィルターを一覧で取得します。

`GET https://creativesurvey.com/api/v1/segments/:id/segment_filters`

id _(必須)_:
: __integer__
: セグメントのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/775/segment_filters \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "created_at": "2014-10-31T16:55:16+09:00",
    "id": 337,
    "inbox_id": 6,
    "question_id": 5189,
    "segment_id": 775,
    "updated_at": "2014-10-31T16:55:16+09:00",
    "value": "9682"
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

