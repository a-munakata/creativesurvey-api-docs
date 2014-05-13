---

category_name: user
title: ユーザーの認証
method: create

---

# ユーザーの認証

## CREATIVE SURVEYのアカウントのメールアドレスとパスワードでユーザーの認証を行います。認証で取得したauth_tokenは、CREATIVE SURVEY APIの全てのリクエストで必要になります。auth_tokenを使用するとAPI全ての操作が可能になるので、厳重に管理してください。

email _(必須)_:
: __string__ 
: 登録しているユーザーのメールアドレス

password _(必須)_:
: __string__
: 登録しているユーザーのパスワード


~~~
定義
POST https://creativesurvey.com/api/v1/users/sign_in

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/users/sign_in \
-d "user_login[email]=sample_email" \
-d "user_login[password]=sample_password"

レスポンス例
{
  "success":true,
  "auth_token":"YourAuthToken",
  "email":"sample_email"
}

エラー例
{
  "success":false,
  "message":"Error with your login or password"
}

~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
