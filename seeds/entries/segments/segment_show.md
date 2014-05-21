---

category_name: segment
title: セグメント設定の取得
method: show

---

# セグメント設定の取得

## セグメント設定を個別で取得します。

segment_id _(必須)_:
: __integer__
: セグメントのid

~~~
定義
GET https://creativesurvey.com/api/v1/segments/:segment_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/131 \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "survey_id": 520,
  "id": 131,
  "name": "40代女性",
  "due_end": null,
  "due_start": "2014-04-27T00:00:00+09:00",
  "is_uncompleted": true,
  "disallow_duplicate_ip": true,
  "allow_screen_out": false,
  "pass_phrase": null,
  "is_public": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

