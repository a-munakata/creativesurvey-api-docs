---

category_name: segment_filter
title: フィルターの削除
action: delete

---

# フィルターの削除

## セグメントのフィルターを削除します。

`DELETE https://creativesurvey.com/api/v1/segment_filters/:id`

id _(必須)_:
: __integer__
: セグメントフィルターのid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/segment_filters/338 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-10-31T17:02:50+09:00",
  "id": 338,
  "inbox_id": 6,
  "question_id": 5189,
  "segment_id": 775,
  "updated_at": "2014-10-31T17:02:50+09:00",
  "value": "9683"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

