---

category_name: theme
title: テーマ一覧の取得
action: index

---

# テーマ一覧の取得

## テーマを一覧で取得します。

`GET https://creativesurvey.com/api/v1/themes`

page:
: __integer__
: 何ページ目を取得するかを指定出来ます。
: 1ページには、12個のテーマが含まれます。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/themes \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "author": "taguchi",
    "background_color": "#f6f6f6",
    "background_size": "auto",
    "created_at": "2013-10-01T18:52:09+09:00",
    "creative_id": null,
    "custom_class": "theme-default",
    "description": "",
    "font_id": null,
    "google_font_id": 65,
    "id": 1,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/image/1/default.jpg"
    },
    "is_background": false,
    "is_font": false,
    "is_google_font": true,
    "layout_position": "",
    "name": "デフォルト・ブルー",
    "ng_source": {
      "url": null
    },
    "order_index": 1,
    "source": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/source/1/default.css"
    },
    "square_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/1/default.jpg",
      "square": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/1/square_default.jpg"
      },
      "rect": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/1/rect_default.jpg"
      }
    },
    "strong_color": "",
    "text_align": "",
    "text_color": "",
    "theme_category_id": 1,
    "thumb_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/thumb_image/1/default_s.jpg"
    },
    "updated_at": "2014-10-27T11:23:42+09:00"
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

　
　
