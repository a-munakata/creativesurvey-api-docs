---

category_name: segment_group
title: セグメントグループの更新
action: update

---

# セグメントグループの更新

## セグメントグループを更新します。

`PUT https://creativesurvey.com/api/v1/segment_groups/:id`

id _(必須)_:
: __integer__
: セグメントグループID

condition _(必須)_:
: __integer__
: セグメントグループを含めるか、除外するかを指定します。
: 1: 含める
: 2: 除外する

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/segment_groups/3 \
-d "segment_group[condition]=2" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "condition": 2,
  "created_at": "2014-12-10T18:29:31+09:00",
  "id": 3,
  "inbox_id": 6,
  "segment_id": 7184,
  "updated_at": "2014-12-10T18:37:54+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

