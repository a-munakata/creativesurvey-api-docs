---

category_name: error
title: ステータスコードとエラーの例
method: index

---

# ステータスコードとエラーの例

|ステータスコード|意味|説明|
|:---|:---|:---|
|302|found|wardenのユーザー認証に失敗している可能性があります。|
|404|not found|リソースが見つかりません。ルーティングの間違いか、存在しないidを指定しているか、認証領域ではないリソースを操作している可能性があります。|
|422|unprocessable entity|処理出来ません。パラメータの不足などが考えられます。|
|500|internal server error|ルーティングが存在しないため、エンドポイントの確認をしてください。

~~~
リソースが存在しない場合
{
  "message":"resource not found"
}

ログインに失敗した場合
{
  "success":false,
  "message":"Error with your login or password"
}

~~~

~~~

エンドポイント
https://creativesurvey.com

~~~









