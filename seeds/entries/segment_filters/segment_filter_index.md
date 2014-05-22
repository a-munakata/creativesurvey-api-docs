---

category_name: segment_filter
title: フィルター一覧の取得
method: index

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
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
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

