---

category_name: survey
title: アンケート一覧の取得
action: index

---

# アンケート一覧の取得

## ユーザーが保持しているアンケートの一覧を取得します。

`GET https://creativesurvey.com/api/v1/surveys`

offset:
: __integer__
: アンケートの表示では最新のアンケートが10件ずつ取得されますが、その際のオフセット値を指定します。
: 例えば`offset=10`を指定すると、11件目~20件目を取得します。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys \
-d "auth_token=sample_auth_token" \
-d "offset=10"

レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "id": 545,
    "password": null,
    "is_public": null,
    "active_segment_id": null,
    "tag_color": null,
    "name": "sub_items"
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
