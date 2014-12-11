---

category_name: invitation
title: 招待メールサンプルの送信
action: sample

---

# 招待メールサンプルの送信

## 招待メールのサンプルを、自分のメールアドレスに送信します。

`POST https://creativesurvey.com/api/v1/invitations/sample`

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/invitations/sample \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "success": true,
  "message": "招待メールを送りました"
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
