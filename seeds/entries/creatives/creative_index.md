---

category_name: creative
title: 画像一覧の取得
action: index

---

# 画像一覧の取得

## アンケートに使用されている画像の一覧を表示します。

`GET https://creativesurvey.com/api/v1/surveys/:id/creatives`

id _(必須)_:
: __integer__
: 対象となるアンケートid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7792/creatives \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "height": 400,
    "id": 1676,
    "trimming": "thumb",
    "width": 400,
    "refs": {
      "image": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/doctocat-brown.jpg",
        "filename": "doctocat-brown.jpg",
        "s_fit": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/s_fit_doctocat-brown.jpg"
        },
        "s_pad": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/s_pad_doctocat-brown.jpg"
        },
        "s_thumb": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/s_thumb_doctocat-brown.jpg"
        },
        "l_fit": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/l_fit_doctocat-brown.jpg"
        },
        "l_pad": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/l_pad_doctocat-brown.jpg"
        },
        "l_thumb": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/l_thumb_doctocat-brown.jpg"
        },
        "blur": {
          "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1676/blur_doctocat-brown.jpg"
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

　
　
