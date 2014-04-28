---

category_name: surveys
title: アンケートの取得
priority: 997

---

# アンケートの取得

## アンケートを個別に取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 取得するアンケートのid

~~~
定義
GET https://creativesurvey.com/api/v1/surveys/:survey_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/514 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-16T21:12:15+09:00",
  "tag_color": "red",
  "questions_count": 0,
  "published_at": null,
  "is_deleted": false,
  "inbox_id": 6,
  "id": 514,
  "created_at": "2014-04-16T21:12:15+09:00",   
  "is_public": null,
  "is_published": false,
  "name": "Sample Survey",
  "panels_count": null,
  "password": "4d"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
