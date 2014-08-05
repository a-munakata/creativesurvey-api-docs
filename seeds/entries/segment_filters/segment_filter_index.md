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
$ curl -X GET https://creativesurvey.com/api/v1/segments/131/segment_filters \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "segment_id": 131,
    "id": 22,
    "value": "2833",
    "question_id": 1905
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

