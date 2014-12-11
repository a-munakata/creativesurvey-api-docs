---

category_name: segment_item
title: セグメントアイテムの作成
action: create

---

# セグメントアイテムの作成

## セグメントアイテムを作成します。

`POST https://creativesurvey.com/api/v1/segment_groups/:id/segment_items`

id _(必須)_:
: __integer__
: セグメントグループID

condition _(必須)_:
: __integer__
: セグメントアイテムをANDで評価するか、ORで評価するかを指定します。
: 1: AND
: 2: OR

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/segment_groups/4/segment_items \
-d "segment_item[condition]=1" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "condition": 1,
  "created_at": "2014-12-10T18:46:18+09:00",
  "id": 6,
  "inbox_id": 6,
  "segment_group_id": 4,
  "updated_at": "2014-12-10T18:46:18+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

