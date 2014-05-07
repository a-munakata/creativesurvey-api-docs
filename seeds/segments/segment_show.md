---

category_name: segment
title: セグメント設定の取得
priority: 997

---

# セグメント設定の取得

## セグメント設定を個別で取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

segment_id*:
: __integer__
: セグメントのid

~~~
定義
GET https://creativesurvey.com/api/v1/segments/:segment_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/segments/117 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T17:54:40+09:00",
  "inbox_id": 6,
  "id": 117,
  "due_start": null,
  "due_end": null,
  "disallow_duplicate_ip": false,
  "created_at": "2014-04-23T17:28:35+09:00",
  "allow_screen_out": false,
  "is_uncompleted": false,
  "name": "男性",
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

