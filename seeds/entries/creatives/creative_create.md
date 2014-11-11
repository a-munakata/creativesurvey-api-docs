---

category_name: creative
title: 画像の作成
action: create

---

# 画像の作成

## アンケートに使用される画像をアップロードします。

`POST https://creativesurvey.com/api/v1/surveys/:id/creatives`

id _(必須)_:
: __integer__
: 対象となるアンケートのid

file _(必須)_:
: __string__ _(デフォルト: null)_
: アップロードする画像のパス。 @を付けて指定します。

trimming:
: __string__ _(デフォルト: thumb)_
: 画像のトリミングの方法を指定します。指定出来るトリミング方法は以下の3つです。
: 正方形: "thumb"
: 正方形・余白あり: "pad"
: 元サイズ優先: "fit"

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/548/creatives \
-F "auth_token=sample_auth_token" \
-F "file=@/Users/4dusers/Desktop/sample.jpeg"

レスポンス例
{
  "height": 400,
  "id": 1679,
  "trimming": "thumb",
  "width": 400,
  "refs": {
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/sample.jpeg",
      "filename": "sample.jpeg",
      "s_fit": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/s_fit_sample.jpeg"
      },
      "s_pad": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/s_pad_sample.jpeg"
      },
      "s_thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/s_thumb_sample.jpeg"
      },
      "l_fit": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/l_fit_sample.jpeg"
      },
      "l_pad": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/l_pad_sample.jpeg"
      },
      "l_thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/l_thumb_sample.jpeg"
      },
      "blur": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1679/blur_sample.jpeg"
      }
    }
  }
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
