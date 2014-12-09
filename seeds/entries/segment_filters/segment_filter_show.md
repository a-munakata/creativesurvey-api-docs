---

category_name: segment_filter
title: フィルターの取得
action: show

---

# フィルターの取得

## セグメントのフィルターを取得します。

`GET https://creativesurvey.com/api/v1/segment_filters/:id`

id _(必須)_:
: __integer__
: セグメントフィルターのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segment_filters/337 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-10-31T16:55:16+09:00",
  "id": 337,
  "inbox_id": 6,
  "question_id": 5189,
  "segment_id": 775,
  "updated_at": "2014-10-31T16:55:16+09:00",
  "value": "9682"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

