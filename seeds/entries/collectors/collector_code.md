---

category_name: collector
title: 公開設定のQRコードの取得
action: code

---

# 公開設定のQRコードの取得

## 公開設定のQRコードを取得します。

`GET https://creativesurvey.com/api/v1/collectors/:id/code`

id _(必須)_:
: __integer__
: 対象となる公開設定のid


##### QRコードはデータが送られるので、リダイレクトさせてダウンロード先のパスを指定する事で画像を保存することが出来ます。または、ブラウザに直接URLを入力する事で画像をダウンロードする事が出来ます。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/collectors/8587/code \
-d "auth_token=sample_auth_token" >> ~/Desktop/

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
