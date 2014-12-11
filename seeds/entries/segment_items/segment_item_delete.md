---

category_name: segment_item
title: セグメントアイテムの削除
action: delete

---

# セグメントアイテムの削除

## セグメントアイテムを削除します。

`DELETE https://creativesurvey.com/api/v1/segment_items/:id`

id _(必須)_:
: __integer__
: セグメントアイテムID

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/segment_items/6 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "condition": 2,
  "created_at": "2014-12-10T18:46:18+09:00",
  "id": 6,
  "inbox_id": 6,
  "segment_group_id": 4,
  "updated_at": "2014-12-10T18:52:26+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

