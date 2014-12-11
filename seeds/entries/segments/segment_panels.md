---

category_name: segment
title: セグメントに一致するパネルの取得
action: panels

---

# セグメントに一致するパネルの取得

## セグメント設定の条件に一致するパネル一覧を取得します。

`GET https://creativesurvey.com/api/v1/segments/:id/panels`

id _(必須)_:
: __integer__
: セグメントのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/779/panels \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "browser": "Chrome",
    "browser_version": "39.0.2171.71",
    "collector_id": 8642,
    "color": "24",
    "complete_at": "2014-12-09T19:40:34+09:00",
    "created_at": "2014-12-09T19:40:25+09:00",
    "current_index": 1,
    "current_question_id": null,
    "custom_key": "2f163f7ec95e8f6b4befff538ac3da396d06324c",
    "id": 8636,
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
        5425
      ],
      [
        5424
      ]
    ],
    "os_browser": "Macintosh : Chrome",
    "platform": "Macintosh",
    "query_string": null,
    "reply_time": 9,
    "resolution": "1280x1024",
    "start_at": "2014-12-09T19:40:25+09:00",
    "survey_id": 7762,
    "updated_at": "2014-12-09T19:40:34+09:00",
    "uuid": null
  },
  {...}
  {...}
]  
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

