---

category_name: creative
title: 画像の取得
action: show

---

# 画像の取得

## アンケートに使用されている画像を表示します。

`GET https://creativesurvey.com/api/v1/creatives/:id`

id _(必須)_:
: __integer__
: 取得する画像のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/creatives/637 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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

　
　
