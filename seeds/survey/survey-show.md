---

category_name: survey
title: アンケートの取得
priority: 999

---

# アンケートの取得

## アンケートの取得は、一覧を取得する方法とidを指定して1つのサーベイを取得する事が出来ます。

auth_token*:
: __string__
: 認証時に必要なトークンです。

offset:
: __integer__
: アンケートの表示では最新のアンケートが10個ずつ取得されますが、その際のオフセット値を指定します。

id:
: __integer__
: urlの末尾にidを指定すると、指定されたサーベイを取得出来ます。
: ex)https://creativesurvey.com/api/v1/surveys/:id


~~~
定義
GET https://creativesurvey.com/api/v1/surveys

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "offset=10"

レスポンス例
[
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
    "name": "aa",
    "panels_count": null,
    "password": "4d"
  },
  ...
]
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
