---

category_name: invitation
title: 招待のサンプルメール送信
action: index

---

# 招待のサンプルメール送信

## 招待のサンプルメールを自分のメールアドレスに送信します。

`POST https://creativesurvey.com/api/v1/invitations/sample`

~~~

リクエスト
$ curl -X POST https://creativesurvey.com/api/v1/invitations/sample \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "success": true,
  "message": "招待サンプルを送りました"
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
