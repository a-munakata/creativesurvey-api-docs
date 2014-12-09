---

category_name: theme
title: テーマの取得
action: show

---

# テーマの取得

## テーマを取得します。

`GET https://creativesurvey.com/api/v1/themes/:id`

id _(必須)_:
: __integer__
: 取得するテーマのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/themes/6 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "author": "sekiguchi",
  "background_color": "",
  "background_size": "auto",
  "created_at": "2013-10-01T18:52:11+09:00",
  "creative_id": 8,
  "custom_class": "theme-mouhitsu",
  "description": "",
  "font_id": 87,
  "google_font_id": 49,
  "id": 6,
  "image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/image/6/mouhitsu.jpg"
  },
  "is_background": true,
  "is_font": true,
  "is_google_font": true,
  "layout_position": "",
  "name": "毛筆",
  "ng_source": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/ng_source/6/mouhitsu.css"
  },
  "order_index": null,
  "source": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/source/6/mouhitsu.css"
  },
  "square_image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/6/mouhitsu.jpg",
    "square": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/6/square_mouhitsu.jpg"
    },
    "rect": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/6/rect_mouhitsu.jpg"
    }
  },
  "strong_color": "",
  "text_align": "",
  "text_color": "",
  "theme_category_id": 2,
  "thumb_image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/thumb_image/6/mouhitsu_s.jpg"
  },
  "updated_at": "2014-10-27T11:23:52+09:00"
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
