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
-d "auth_token=YourAuthToken"
レスポンス例
{
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

