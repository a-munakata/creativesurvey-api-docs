---

category_name: creative
title: 画像のアップロード
priority: 999

---

# 画像のアップロード

## アンケートに使用されている画像をアップロードします。

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 画像をアップロードするアンケートのid

creative[image]*:
: __string__
: アップロードする画像のパス。 @を付けて指定します。

~~~
定義
POST https://creativesurvey.com/api/v1/surveys/:survey_id/creatives

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/516/creatives \
-F "auth_token=KRXJUq7yxjT18Vxxxxxx" \
-F "creative[image]=@/Users/4dusers/Desktop/red.gif"

レスポンス例
{
  "width": 1,
  "updated_at": "2014-04-21T22:46:37+09:00",
  "trimming": "thumb",
  "text_color": null,
  "survey_id": 516,
  "strong_color": null,
  "priority": 1000,
  "id": 618,
  "height": 1,
  "created_at": "2014-04-21T22:46:37+09:00",
  "background_size": "auto",
  "background_repeat": true,
  "background_position_y": null,
  "background_position_x": null,
  "background_color": null,
  "image": {
    "l_fit": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/l_fit_red.gif"
    },
    "l_thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/l_thumb_red.gif"
    },
    "l_pad": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/l_pad_red.gif"
    },
    "blur": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/blur_red.gif"
    },
    "s_fit": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/s_fit_red.gif"
    },
    "s_thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/s_thumb_red.gif"
    },
    "s_pad": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/s_pad_red.gif"
    },
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/618/red.gif"
  },
  "inbox_id": 6,
  "insole_brightness": 0.5,
  "is_awkward": null,
  "is_sample": false,
  "is_template": false,
  "name": null,
  "original_remote_url": null
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
