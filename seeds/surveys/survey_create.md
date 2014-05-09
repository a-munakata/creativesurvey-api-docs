---

category_name: surveys
title: アンケートの作成
priority: 998

---

# アンケートの作成

## 新規アンケートを作成します。


auth_token*:
: __string__
: 認証時に必要なトークンです。

name*:
: __string__
: アンケート名

tag_color:
: __string__ _(デフォルト: null)_
: アンケートのタグの色で、下記の色を指定することが出来ます。
: cyan   : 水色
: purple : 紫
: red    : 赤
: green  : 緑
: pink   : ピンク
: yellow : 黄色
: orange : オレンジ
: gray   : 灰色

is_public:
: __boolean__ _(デフォルト: null)_
: trueを返すとアンケートの結果を公開します。

password:
: __string__ _(デフォルト: null)_
: 結果を公開する際に求めるパスワード

active_segment_id:
: __integer__ _(デフォルト: null)_
: 適用するセグメントのid

~~~
定義
POST https://creativesurvey.com/api/v1/surveys

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "survey[name]=sample_survey" \
-d "survey[tag_color]=red"

レスポンス例
{
  "updated_at": "2014-05-08T17:32:20+09:00",
  "tag_color": "red",
  "statistic_make_at": null,
  "questions_count": 0,
  "published_at": null,
  "public_token": "1153bc8d38b5bbb0b2ce2247cdcae9c48ca0457c",
  "preview_count": 0,
  "is_deleted": false,
  "inbox_id": 6,
  "id": 533,
  "gift_count": 0,
  "gift_code": null,
  "edit_count": 0,
  "created_at": "2014-05-08T17:32:20+09:00",
  "active_segment_id": null,
  "is_duplicating": false,
  "is_gift": false,
  "is_processing_statistic": null,
  "is_public": null,
  "is_published": false,
  "name": "sample_survey",
  "panels_count": null,
  "password": null
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
