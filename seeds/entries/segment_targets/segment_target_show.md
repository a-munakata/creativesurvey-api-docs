---

category_name: segment_target
title: セグメントターゲットの取得
action: show

---

# セグメントターゲットの取得

## セグメントターゲットを取得します。

`GET https://creativesurvey.com/api/v1/segment_targets/:id`

id _(必須)_:
: __integer__
: セグメントターゲットID


~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segment_targets/6 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-12-10T18:29:46+09:00",
  "id": 6,
  "inbox_id": 6,
  "question_id": null,
  "segment_item_id": 5,
  "subject": 1,
  "updated_at": "2014-12-10T18:29:46+09:00",
  "value": null,
  "verb": 1
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

