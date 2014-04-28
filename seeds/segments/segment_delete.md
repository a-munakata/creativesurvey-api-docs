---

category_name: segment
title: セグメント設定の削除
priority: 999

---

# セグメント設定の削除

## セグメント設定を削除します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

segment_id*:
: __integer__
: セグメントのid

~~~
定義
DELETE https://creativesurvey.com/api/v1/segments/:segment_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/segments/117 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T23:32:32+09:00",
  "unique_id": null,
  "is_making": null,
  "inbox_id": 6,
  "id": 117,
  "due_start": null,
  "due_end": null,
  "disallow_duplicate_ip": false,
  "created_at": "2014-04-23T17:28:35+09:00",
  "allow_screen_out": false,
  "is_public": null,
  "is_raw_data_error": null,
  "is_uncompleted": false,
  "make_at": null,
  "name": "30代男性",
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

