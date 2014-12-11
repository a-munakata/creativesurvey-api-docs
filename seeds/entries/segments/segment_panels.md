---

category_name: segment
title: セグメント条件に一致した回答者の取得
action: panels

---

# セグメント条件に一致した回答者の取得

## セグメント条件に一致した回答者を一覧で取得します。

`GET https://creativesurvey.com/api/v1/segments/:id/panels`

id _(必須)_:
: __integer__
: セグメントのid

page:
: __integer__
: 回答者は12件ごとに取得されます。
: pageを指定する事で、オフセットを設定する事が出来ます。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/7184/panels \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "browser": "Chrome",
    "browser_version": "39.0.2171.71",
    "collector_id": 8778,
    "color": "24",
    "complete_at": "2014-12-10T19:29:52+09:00",
    "created_at": "2014-12-10T19:29:39+09:00",
    "current_index": 2,
    "current_question_id": null,
    "custom_key": "c36c9f0a4628ee0a68f24a700d0815420c4d3120",
    "id": 8644,
    "ip_address": "",
    "is_complete": true,
    "is_invalid": false,
    "is_mobile": false,
    "is_preview": null,
    "is_screen_out": false,
    "is_valid": true,
    "message": null,
    "order": [
      [
        5897
      ],
      [
        5898
      ],
      [
        5896
      ]
    ],
    "os_browser": "Macintosh : Chrome",
    "platform": "Macintosh",
    "query_string": null,
    "reply_time": 13,
    "resolution": "1280x1024",
    "start_at": "2014-12-10T19:29:39+09:00",
    "survey_id": 7899,
    "updated_at": "2014-12-10T19:29:54+09:00",
    "uuid": null
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

