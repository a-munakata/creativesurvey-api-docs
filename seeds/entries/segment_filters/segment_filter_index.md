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
$ curl -X GET https://creativesurvey.com/api/v1/segments/117/segment_filters \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "value": "4383",
    "updated_at": "2014-04-28T10:47:05+09:00",
    "segment_id": 119,
    "question_id": 1865,
    "inbox_id": 6,
    "id": 14,
    "created_at": "2014-04-28T10:47:05+09:00"
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

