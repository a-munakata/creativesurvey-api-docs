---

category_name: creative
title: 画像テンプレート一覧の取得
action: index

---

# 画像テンプレートの取得

## テンプレートとして用意されている、背景画像の一覧を取得します。

`GET https://creativesurvey.com/api/v1/ceratives`

page:
: __integer__
: 背景画像は1ページに12つ取得出来ます。
: pageを指定する事で、それ以降のアイテムも取得することが出来ます。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/creatives \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "height": 1,
    "id": 641,
    "trimming": "thumb",
    "width": 1,
    "refs": {
      "image": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/red.gif",
        "filename": null,
        "s_fit": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/s_fit_red.gif"
        },
        "s_pad": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/s_pad_red.gif"
        },
        "s_thumb": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/s_thumb_red.gif"
        },
        "l_fit": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/l_fit_red.gif"
        },
        "l_pad": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/l_pad_red.gif"
        },
        "l_thumb": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/l_thumb_red.gif"
        },
        "blur": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/641/blur_red.gif"
        }
      }
    }
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

　
　
