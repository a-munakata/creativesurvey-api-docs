---

category_name: segment_filter
title: フィルター一覧の取得
method: index

---

# フィルター一覧の取得

## セグメントのフィルターを一覧で取得します。

segment_id _(必須)_:
: __integer__
: セグメントのid

~~~
定義
GET https://creativesurvey.com/api/v1/segments/:segment_id/segment_filters

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

