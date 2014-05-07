---

category_name: surveys
title: アンケート一覧の取得
priority: 999

---

# アンケート一覧の取得

## ユーザーが保持しているアンケートの一覧を取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

offset:
: __integer__
: アンケートの表示では最新のアンケートが10件ずつ取得されますが、その際のオフセット値を指定します。
: 例えば`offset=10`を指定すると、11件目~20件目を取得します。

~~~
定義
GET https://creativesurvey.com/api/v1/surveys

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "offset=10"

レスポンス例
[
  {
    "updated_at": "2014-04-16T21:12:15+09:00",
    "tag_color": "red",
    "questions_count": 0,
    "published_at": null,
    "is_deleted": false,
    "inbox_id": 6,
    "id": 514,
    "created_at": "2014-04-16T21:12:15+09:00",
    "is_public": null,
    "is_published": false,
    "name": "Sample Survey",
    "panels_count": null,
    "password": null,
    "active_segment_id": null
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
