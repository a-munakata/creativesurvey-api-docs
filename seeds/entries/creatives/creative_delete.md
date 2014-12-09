---

category_name: creative
title: 画像の削除
action: delete

---

# 画像の削除

## アンケートに使用されている画像の削除

`DELETE https://creativesurvey.com/api/v1/surveys/:survey_id/creatives/:creative_id`

survey_id _(必須)_:
: __integer__
: 取得する画像が含まれるアンケートのid

creative_id _(必須)_:
: __integer__
: 取得する画像のid

 
~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/surveys/7792/creatives/1682 \
-d "auth_token=sample_auth_token"

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

　
　
