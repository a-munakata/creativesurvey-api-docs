---

category_name: segment_item
title: セグメントアイテムの更新
action: update

---

# セグメントアイテムの更新

## セグメントアイテムを更新します。

`PUT https://creativesurvey.com/api/v1/segment_items/:id`

id _(必須)_:
: __integer__
: セグメントアイテムID

condition _(必須)_:
: __integer__
: セグメントアイテムをANDで評価するか、ORで評価するかを指定します。
: 1: AND
: 2: OR

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/segment_items/6 \
-d "segment_item[condition]=2" \
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

