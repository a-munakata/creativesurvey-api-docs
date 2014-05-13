---

category_name: segment
title: セグメント設定の削除
method: delete

---

# セグメント設定の削除

## セグメント設定を削除します。

segment_id _(必須)_:
: __integer__
: セグメントのid

~~~
定義
DELETE https://creativesurvey.com/api/v1/segments/:segment_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/segments/131 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-08T19:48:59+09:00",
  "unique_id": null,
  "is_making": null,
  "inbox_id": 6,
  "id": 131,
  "due_start": "2014-04-27T00:00:00+09:00",
  "due_end": "2014-04-30T00:00:00+09:00",
  "disallow_duplicate_ip": true,
  "created_at": "2014-05-08T19:48:59+09:00",
  "allow_screen_out": false,
  "is_public": null,
  "is_raw_data_error": null,
  "is_uncompleted": true,
  "make_at": null,
  "name": "40代女性",
  "pass_phrase": null,
  "raw_data_error": null,
  "survey_id": 520
}

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

