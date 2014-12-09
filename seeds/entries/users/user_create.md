---

category_name: user
title: ユーザーの認証
action: create

---

# ユーザーの認証

## CREATIVE SURVEYのアカウントのメールアドレスとパスワードでユーザーの認証を行います。認証で取得したauth_tokenは、CREATIVE SURVEY APIの全てのリクエストで必要になります。auth_tokenを使用するとAPI全ての操作が可能になるので、厳重に管理してください。

`POST https://creativesurvey.com/api/v1/users/sign_in`

email _(必須)_:
: __string__ 
: 登録しているユーザーのメールアドレス

password _(必須)_:
: __string__
: 登録しているユーザーのパスワード


~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/users/sign_in \
-d "user_login[email]=sample_email" \
-d "user_login[password]=sample_password"

レスポンス例
{
  "success":true,
  "auth_token":"sample_auth_token"
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
