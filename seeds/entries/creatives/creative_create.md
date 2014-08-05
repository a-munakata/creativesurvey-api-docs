---

category_name: creative
title: 画像の作成
action: create

---

# 画像の作成

## アンケートに使用される画像をアップロードします。

`POST https://creativesurvey.com/api/v1/surveys/:id/creatives`

id _(必須)_:
: __integer__
: 対象となるアンケートのid

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
$ curl -X POST https://creativesurvey.com/api/v1/surveys/548/creatives \
-F "auth_token=sample_auth_token" \
-F "creative[image]=@/Users/4dusers/Desktop/grid.gif"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "survey_id": 548,
  "id": 644,
  "priority": 1000,
  "original_remote_url": null,
  "trimming": "thumb",
  "height": 300,
  "width": 300,
  "image": "grid.gif"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
