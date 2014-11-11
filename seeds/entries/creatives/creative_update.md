---

category_name: creative
title: 画像の更新
action: update

---

# 画像の更新

## アンケートに使用されている画像を更新します。

`PUT https://creativesurvey.com/api/v1/surveys/:survey_id/creatives/:creative_id`

survey_id _(必須)_:
: __integer__
: 更新する画像が含まれるアンケートのid

creative_id _(必須)_:
: __integer__
: 更新する画像のid

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
$ curl -X PUT https://creativesurvey.com/api/v1/surveys/7792/creatives/1682 \
-F "auth_token=sample_auth_token" \
-F "creative[trimming]=fit" \
-F "file=@/Users/4dusers/Desktop/fav/sample.jpeg"


レスポンス例
{
  "height": 400,
  "id": 1682,
  "trimming": "fit",
  "width": 400,
  "refs": {
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/octobiwan.jpg",
      "filename": null,
      "s_fit": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/s_fit_octobiwan.jpg"
      },
      "s_pad": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/s_pad_octobiwan.jpg"
      },
      "s_thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/s_thumb_octobiwan.jpg"
      },
      "l_fit": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/l_fit_octobiwan.jpg"
      },
      "l_pad": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/l_pad_octobiwan.jpg"
      },
      "l_thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/l_thumb_octobiwan.jpg"
      },
      "blur": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/1682/blur_octobiwan.jpg"
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

　
　
