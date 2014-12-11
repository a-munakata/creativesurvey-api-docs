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
: デフォルトでは最新のアンケートが10件ずつ取得されますが、その際のオフセット値を指定します。
: 例えば`offset=10`と指定すると、11件目~20件目を取得します。

page:
: __integer__
: 何ページ目を取得するかを指定出来ます。
: 1ページにはアンケートが10表示されます。
: 例えば`page=2`と指定すると、11件目~20件目を取得します。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys \
-d "auth_token=sample_auth_token" \
-d "offset=10"

レスポンス例
[
  {
    "active_segment_id": null,
    "completed_panels_count": null,
    "created_at": "2014-09-03T20:51:47+09:00",
    "edit_count": 3,
    "gift_code": "309b1aed07348ff783a53ee51d61a4bd772da9d9",
    "gift_count": 0,
    "id": 7561,
    "inbox_id": 6,
    "is_deleted": false,
    "is_duplicating": false,
    "is_gift": false,
    "is_processing_statistic": null,
    "is_public": null,
    "is_public_preview": null,
    "is_published": false,
    "name": "NEW UI",
    "panels_count": 0,
    "password": null,
    "preview_count": 1,
    "preview_password": null,
    "public_token": "62c174d0e9feb5515a365605ec5b017b3e5c6fd5",
    "published_at": "2014-09-03T19:38:05+09:00",
    "questions_count": 0,
    "statistic_make_at": null,
    "tag_color": "novel",
    "updated_at": "2014-09-24T12:46:55+09:00",
    "status": "edit",
    "color": "novel",
    "result_url": "https://creativesurvey.com/public/results/62c174d0e9feb5515a365605ec5b017b3e5c6fd5/summary",
    "preview_url": "https://creativesurvey.com/ng/surveys/7561/public/preview"
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
