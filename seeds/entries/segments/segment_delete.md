---

category_name: segment
title: セグメント設定の削除
action: delete

---

# セグメント設定の削除

## セグメント設定を削除します。

`DELETE https://creativesurvey.com/api/v1/segments/:id`

id _(必須)_:
: __integer__
: セグメントのid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/segments/774 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "allow_screen_out": false,
  "created_at": "2014-10-31T16:40:27+09:00",
  "disallow_duplicate_ip": false,
  "due_end": null,
  "due_start": null,
  "id": 774,
  "inbox_id": 6,
  "is_making": null,
  "is_public": null,
  "is_raw_data_error": null,
  "is_uncompleted": false,
  "make_at": null,
  "name": "30代男性",
  "pass_phrase": null,
  "raw_data_error": null,
  "survey_id": 7711,
  "unique_id": null,
  "updated_at": "2014-10-31T16:44:44+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

