---

category_name: creative
title: 画像の削除
method: delete

---

# 画像の削除

## アンケートに使用されている画像の削除

creative_id _(必須)_:
: __integer__
: 画像のid 
 
~~~
定義
DELETE https://creativesurvey.com/api/v1/creatives/:creative_id

リクエスト例
$ curl -X DELETE \
https://creativesurvey.com/api/v1/creatives/528 \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "survey_id": 528,
  "id": 638,
  "priority": 1000,
  "original_remote_url": null,
  "trimming": "fit",
  "height": 400,
  "width": 400,
  "image": null
}

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
