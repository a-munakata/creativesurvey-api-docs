
---

category_name: survey
title: アンケートの更新
method: update

---

# アンケートの更新

## 作成したアンケートを更新します。

survey_id _(必須)_:
: __integer__
: 更新するアンケートのid

name _(必須)_:
: __string__
: アンケート名

password:
: __string__ _(デフォルト: null)_
: 結果を公開する際に求めるパスワード

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
: __boolean__ _(デフォルト: false)_
: trueを返すとアンケートの結果を公開します。

active_segment_id:
: __integer__ _(デフォルト: null)_
: 適用するセグメントのid

~~~
定義
PUT https://creativesurvey.com/api/v1/surveys/:survey_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/surveys/508 \
-u "auth_token=YourAuthToken": \
-d "survey[name]=sample_survey2" \
-d "survey[tag_color]=green"

レスポンス例
{
  "id": 532,
  "password": null,
  "is_public": null,
  "active_segment_id": null,
  "tag_color": "green",
  "name": "sample_survey2"
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

