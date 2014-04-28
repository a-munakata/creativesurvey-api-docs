---

category_name: surveys
title: アンケートの更新
priority: 996

---

# アンケートの更新

## 作成したアンケートを更新します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 更新するアンケートのid

name:
: __string__
: アンケート名

tag_color:
: __string__
: アンケートのタグの色
: 指定出来る色は"cyan", "purple", "red", "green", "pink", "yellow", "orange", "gray"です。

is_public:
: __boolean__ _(デフォルト: false)_
: trueを返すとアンケートの結果を公開します。

password:
: __string__ _(デフォルト: null)_
: 結果を公開する際に求めるパスワード

~~~
定義
PUT https://creativesurvey.com/api/v1/surveys/:survey_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/surveys/508 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "survey[name]=sample_survey2" \
-d "survey[tag_color]=red"

レスポンス例
{ 
  "created_at":"2014-04-16T20:11:35+09:00",
  "id":508,
  "inbox_id":6,
  "is_deleted":false,
  "is_public":null,
  "is_published":false,
  "name":"sample_survey2",
  "panels_count":null,
  "password":null,
  "published_at":null,
  "questions_count":0,
  "tag_color":red,
  "updated_at":"2014-04-16T20:11:35+09:00"
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

