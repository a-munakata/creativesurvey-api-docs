---

category_name: segment_item
title: セグメントアイテム一覧の取得
action: index

---

# セグメントアイテム一覧の取得

## セグメントアイテム一覧を取得します。

`GET https://creativesurvey.com/api/v1/segment_groups/:id/segment_items`

id _(必須)_:
: __integer__
: セグメントグループID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segment_groups/4/segment_items \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "condition": 1,
    "created_at": "2014-12-10T18:46:18+09:00",
    "id": 6,
    "inbox_id": 6,
    "segment_group_id": 4,
    "updated_at": "2014-12-10T18:46:18+09:00"
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

