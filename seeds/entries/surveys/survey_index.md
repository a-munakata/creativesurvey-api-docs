---

category_name: survey
title: アンケート一覧の取得
method: index

---

# アンケート一覧の取得

## ユーザーが保持しているアンケートの一覧を取得します。

offset:
: __integer__
: アンケートの表示では最新のアンケートが10件ずつ取得されますが、その際のオフセット値を指定します。
: 例えば`offset=10`を指定すると、11件目~20件目を取得します。

~~~
定義
GET https://creativesurvey.com/api/v1/surveys

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys \
-d "auth_token=YourAuthToken" \
-d "offset=10"

レスポンス例
[
  {
    "updated_at": "2014-04-23T11:11:52+09:00",
    "tag_color": null,
    "statistic_make_at": null,
    "questions_count": 0,
    "published_at": null,
    "public_token": "2a1ee3261d7120affb00da0f539db91eb3856af2",
    "preview_count": 7,
    "is_deleted": false,
    "inbox_id": 6,
    "id": 519,
    "gift_count": 0,
    "gift_code": null,
    "edit_count": 16,
    "created_at": "2014-04-22T17:39:28+09:00",
    "active_segment_id": null,
    "is_duplicating": false,
    "is_gift": false,
    "is_processing_statistic": null,
    "is_public": null,
    "is_published": false,
    "name": "page_order_items",
    "panels_count": 7,
    "password": null
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
