---

category_name: creative
title: 画像の更新
method: update

---

# 画像の更新

## アンケートに使用されている画像を更新します。

`PUT https://creativesurvey.com/api/v1/creatives/:creative_id`

id _(必須)_:
: __integer__
: 更新する画像のid

image _(必須)_:
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
$ curl -X PUT https://creativesurvey.com/api/v1/creatives/638 \
-u "auth_token=YourAuthToken": \
-d "creative[trimming]=fit"

レスポンス例
{
  "survey_id": 528,
  "id": 638,
  "priority": 1000,
  "original_remote_url": null,
  "trimming": "fit",
  "height": 400,
  "width": 400,
  "image": "grid.gif"
}


~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
