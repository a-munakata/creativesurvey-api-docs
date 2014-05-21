---

category_name: creative
title: 画像の取得
method: show

---

# 画像の取得

## アンケートに使用されている画像を表示します。

creative_id _(必須)_:
: __integer__
: 取得する画像のid

~~~
定義
GET https://creativesurvey.com/api/v1/creatives/:creative_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/creatives/637 \
-d "auth_token=YourAuthToken"

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

　
　
