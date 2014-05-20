---

category_name: segment_filter
title: フィルターの削除
method: delete

---

# フィルターの削除

## セグメントのフィルターを削除します。

segment_filter_id _(必須)_:
: __integer__
: セグメントフィルターのid

~~~
定義
DELETE https://creativesurvey.com/api/v1/segment_filters/segment_filter_id

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/segment_filters/22 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "segment_id": 131,
  "id": 22,
  "value": "2833",
  "question_id": 1905
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

