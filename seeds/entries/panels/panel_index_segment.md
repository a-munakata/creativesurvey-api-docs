---

category_name: panel
title: 回答者一覧の取得(セグメント毎)
action: index
parent_klass: segment

---

# 回答者一覧の取得(セグメント毎)

## 回答者の一覧をセグメントを指定して取得します。

`GET https://creativesurvey.com/api/v1/segments/:id/panels`

id _(必須)_:
: __integer__
: 取得したい回答者のセグメントid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/132/panels \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "browser": "Chrome",
    "browser_version": "38.0.2125.122",
    "collector_id": 8722,
    "color": "24",
    "complete_at": "2014-11-17T16:42:22+09:00",
    "created_at": "2014-11-17T16:42:09+09:00",
    "current_index": 1,
    "current_question_id": null,
    "custom_key": "6cb73caa79ebb41923ccf89244aa51d33db29251",
    "id": 8551,
    "ip_address": "192.168.56.1",
    "is_complete": true,
    "is_invalid": false,
    "is_mobile": false,
    "is_preview": null,
    "is_screen_out": false,
    "is_valid": true,
    "message": null,
    "order": [
      [
        5720,
        5722
      ],
      [
        5721
      ]
    ],
    "os_browser": "Macintosh : Chrome",
    "platform": "Macintosh",
    "query_string": null,
    "reply_time": 13,
    "resolution": "1280x1024",
    "start_at": "2014-11-17T16:42:09+09:00",
    "survey_id": 7849,
    "updated_at": "2014-11-17T16:42:30+09:00",
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

