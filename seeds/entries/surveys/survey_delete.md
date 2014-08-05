---

category_name: survey
title: アンケートの削除
action: delete

---

# アンケートの削除

## アンケートを削除します。

`DELETE http://creativesurvey.com/api/v1/surveys/:id`

id _(必須)_:
: __integer__
: 削除するアンケートのid

~~~

リクエスト例
$ curl -X DELETE http://creativesurvey.com/api/v1/surveys/532 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "id": 532,
  "password": null,
  "is_public": null,
  "active_segment_id": null,
  "tag_color": "red",
  "name": "sample_survey"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

