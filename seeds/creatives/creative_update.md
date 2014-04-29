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
: 取得する画像のid

trimming:
: __string__
: 画像のトリミングの方法を指定します。指定出来るトリミング方法は以下の3つです。
: 正方形: "thumb"
: 正方形・余白あり: "pad"
: 元サイズ優先: "fit"

~~~
定義
PUT https://creativesurvey.com/api/v1/creatives/:creative_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/creatives/:creative_id \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \


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

　
　
