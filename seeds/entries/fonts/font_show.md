---

category_name: font
title: 和文フォントの取得
action: show

---

# 和文フォントの取得

## 和文フォントを取得します。

`GET https://creativesurvey.com/api/v1/fonts/:id`

id _(必須)_:
: __integer__
: 取得する和文フォントのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/fonts/6 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2013-10-01T18:51:25+09:00",
  "english_name": "UD Shin Go Bold",
  "font_category_id": null,
  "font_size": 14,
  "id": 6,
  "image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/image/6/UD-Shin-Go-Bold.png",
    "s_thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/image/6/s_thumb_UD-Shin-Go-Bold.png"
    }
  },
  "list_image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/list_image/6/UD-Shin-Go-Bold.png"
  },
  "list_on_image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/list_on_image/6/UD-Shin-Go-Bold_on.png"
  },
  "name": "UD新ゴ B",
  "order_index": 1,
  "source": " 'UD新ゴ B',' UD Shin Go Bold', sans-serif",
  "thumb_image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/thumb_image/6/UD-Shin-Go-Bold.png"
  },
  "updated_at": "2014-10-21T01:06:29+09:00"
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
