---

category_name: raw_datum
title: ローデータの作成
action: reserve

---

# ローデータの作成

## セグメント条件に一致したパネルの、ローデータを作成します。ローデータの作成が完了すると、メールで通知されます。データ作成後は、raw_datum#showより、ダウンロードURLが取得出来るようになります。

`POST https://creativesurvey.com/api/v1/segments/:id/raw_datum/reserve`

id _(必須)_:
: __integer__
: セグメントID

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/segments/7184/raw_datum/reserve \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "success": true,
  "message": "表形式データの作成を受け付けました。完了後にメールで通知されます。"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

