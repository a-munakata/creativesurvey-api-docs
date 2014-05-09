---

category_name: segment_filter
title: フィルターの取得
priority: 997

---

# フィルターの取得

## セグメントのフィルターを取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

segment_filter_id*:
: __integer__
: セグメントフィルターのid

~~~
定義
GET https://creativesurvey.com/api/v1/segment_filters/segment_filter_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segment_filters/10 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "value": "2760",
  "updated_at": "2014-04-23T17:54:17+09:00",
  "segment_id": 116,
  "question_id": 1847,
  "inbox_id": 6,
  "id": 10,
  "created_at": "2014-04-23T17:54:17+09:00"
}

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

