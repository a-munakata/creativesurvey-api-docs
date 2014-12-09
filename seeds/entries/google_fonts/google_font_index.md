---

category_name: google_font
title: 欧文フォント一覧の取得
action: index

---

# 欧文フォント一覧の取得

## アンケートに使用出来る欧文フォント一覧を取得します。

`GET https://creativesurvey.com/api/v1/google_fonts`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/google_fonts \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "created_at": "2013-10-01T18:51:46+09:00",
    "google_font_category_id": null,
    "id": 1,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/image/1/Abel.png",
      "s_thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/image/1/s_thumb_Abel.png"
      }
    },
    "import": " @import url(https://fonts.googleapis.com/css?family=Abel);",
    "list_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/list_image/1/Abel.png"
    },
    "list_on_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/list_on_image/1/Abel_on.png"
    },
    "name": "Abel",
    "order_index": 0,
    "source": " 'Abel'",
    "thumb_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/thumb_image/1/Abel.png"
    },
    "updated_at": "2014-10-21T11:36:06+09:00"
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

　
　
