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
: アンケートのタグの色
: 指定出来る色は"cyan", "purple", "red", "green", "pink", "yellow", "orange", "gray"です。

is_public:
: __boolean__ _(デフォルト: false)_
: trueを返すとアンケートの結果を公開します。

password:
: __string__ _(デフォルト : null)_
: 結果を公開する際に求めるパスワード


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
  "created_at":"2014-04-16T20:11:35+09:00",
  "id":508,
  "inbox_id":6,
  "is_deleted":false,
  "is_public":null,
  "is_published":false,
  "name":"sample_survey",
  "panels_count":null,
  "password":null,
  "published_at":null,
  "questions_count":0,
  "tag_color":red,
  "updated_at":"2014-04-16T20:11:35+09:00",
  "active_segment_id": null
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
