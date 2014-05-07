---

category_name: segment_filter
title: フィルターの削除
priority: 995

---

# フィルターの削除

## セグメントのフィルターを削除します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

segment_filter_id*:
: __integer__
: セグメントフィルターのid

~~~
定義
DELETE https://creativesurvey.com/api/v1/segment_filters/segment_filter_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/segment_filters/14 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "value": "4383",
  "updated_at": "2014-04-28T16:24:39+09:00",
  "segment_id": 119,
  "question_id": 1865,
  "inbox_id": 6,
  "id": 14,
  "created_at": "2014-04-28T10:47:05+09:00"
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

