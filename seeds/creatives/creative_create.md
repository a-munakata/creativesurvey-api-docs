---

category_name: creative
title: 画像のアップロード
priority: 998

---

# 画像のアップロード

## アンケートに使用されている画像をアップロードします。

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 画像をアップロードするアンケートのid

image*:
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
  "width": 679,
  "updated_at": "2014-01-21T15:56:23+09:00",
  "trimming": "thumb",
  <!--    "text_color": null,-->
  "survey_id": 47,
  <!--    "strong_color": null,-->
  <!--    "priority": 1000,-->
  "id": 138,
  "height": 32,
  "created_at": "2013-10-18T11:36:16+09:00",
  <!--    "background_size": "auto",-->
  <!--    "background_repeat": true,-->
  <!--    "background_position_y": null,-->
  <!--    "background_position_x": null,-->
  <!--    "background_color": null,-->
  <!--    "image": {
  "l_fit": {
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/l_fit_form_thank_you.png"
},
  "l_thumb": {
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/l_thumb_form_thank_you.png"
},
  "l_pad": {
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/l_pad_form_thank_you.png"
},
  "blur": {
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/blur_form_thank_you.png"
},
  "s_fit": {
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/s_fit_form_thank_you.png"
},
  "s_thumb": {
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/s_thumb_form_thank_you.png"
},
  "s_pad": {
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/s_pad_form_thank_you.png"
},
  "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/138/form_thank_you.png"
},
  -->
  "inbox_id": 6,
  <!--    "insole_brightness": 0.5,-->
  <!--    "is_awkward": null,-->
  <!--    "is_sample": false,-->
  <!--    "is_template": false,-->
  "name": null,
  <!--    "original_remote_url": null-->
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

　
　
