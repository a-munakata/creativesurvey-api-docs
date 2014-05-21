---

category_name: panel
title: 回答者一覧の取得(セグメント毎)
method: index

---

# 回答者一覧の取得(セグメント毎)

## 回答者の一覧をセグメントを指定して取得します。

segment_id _(必須)_:
: __integer__
: 取得したい回答者のセグメントid

~~~
定義
GET https://creativesurvey.com/api/v1/segments/:segment_id/panels

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/132/panels \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
    "id": 3810,
    "os_browser": "Macintosh : Chrome",
    "browser_version": "34.0.1847.137",
    "browser": "Chrome",
    "resolution": "1280x1024",
    "current_question_id": null,
    "is_valid": true,
    "current_index": 1,
    "order": [
      [
        1920
      ]
    ],
    "color": "24",
    "platform": "Macintosh",
    "is_mobile": false,
    "ip_address": "127.0.0.1",
    "query_string": null,
    "custom_key": "1e9addc6442a4bdf5dc3401185f3914e8d0b4b22",
    "is_screen_out": false,
    "message": null
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

