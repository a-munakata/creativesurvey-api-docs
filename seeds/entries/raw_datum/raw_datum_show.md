---

category_name: raw_datum
title: ローデータの取得
action: show

---

# ローデータの取得

## ローデータのダウンロードURL、データの作成状況を取得します。

`GET https://creativesurvey.com/api/v1/segments/:id/raw_datum`

id _(必須)_:
: __integer__
: セグメントID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/7184/raw_datum/reserve \
-d "auth_token=sample_auth_token"

レスポンス例
レスポンス例
{
  "success": true,
  "done": true,
  "download_url": "https://creativesurvey.com/api/v1/segments/7184/raw_datum.csv"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

