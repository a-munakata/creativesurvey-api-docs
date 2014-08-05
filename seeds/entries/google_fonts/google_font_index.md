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
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "id": 95,
    "name": "Vollkorn",
    "image": "Vollkorn.png"
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

　
　
