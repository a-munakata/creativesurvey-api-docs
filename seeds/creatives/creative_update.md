---

category_name: creative
title: 画像の更新
priority: 996

---

# 画像の更新

## アンケートに使用されている画像を更新します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

creative_id*:
: __integer__
: 更新する画像のid

image*:
: __string__ _(デフォルト: null)_
: アップロードする画像のパス。 @を付けて指定します。

trimming:
: __string__ _(デフォルト: thumb)_
: 画像のトリミングの方法を指定します。指定出来るトリミング方法は以下の3つです。
: 正方形: "thumb"
: 正方形・余白あり: "pad"
: 元サイズ優先: "fit"

~~~
定義
PUT https://creativesurvey.com/api/v1/creatives/:creative_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/creatives/637 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "width": 250,
  "updated_at": "2014-05-08T11:33:49+09:00",
  "trimming": "thumb",
  "text_color": null,
  "survey_id": 528,
  "strong_color": null,
  "id": 637,
  "height": 197,
  "created_at": "2014-05-08T11:33:49+09:00",
  "background_size": "auto",
  "background_repeat": true,
  "background_position_y": null,
  "background_position_x": null,
  "background_color": null,
  "image": {
    "l_fit": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/l_fit_4.gif"
    },
    "l_thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/l_thumb_4.gif"
    },
    "l_pad": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/l_pad_4.gif"
    },
    "blur": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/blur_4.gif"
    },
    "s_fit": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/s_fit_4.gif"
    },
    "s_thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/s_thumb_4.gif"
    },
    "s_pad": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/s_pad_4.gif"
    },
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/637/4.gif"
  },
  "inbox_id": 6,
  "insole_brightness": 0.5,
  "name": null,
  "original_remote_url": null
}

リソースが存在しない場合
{
  "message": "resource not found"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
