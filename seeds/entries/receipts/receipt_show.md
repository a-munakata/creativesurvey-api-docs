---

category_name: receipt
title: 領収書の取得
action: show

---

# 領収書の取得

## 領収書を個別で取得します。データをリダイレクトでファイルに書き込む事でPDFデータをファイルに書き込むことが出来ます。

`GET https://creativesurvey.com/api/v1/receipts/:id`

id _(必須)_:
: __integer__
: 取得する領収書のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/receipts/339.pdf > /path/to/target.pdf \
-d "auth_token=sample_auth_token"

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

