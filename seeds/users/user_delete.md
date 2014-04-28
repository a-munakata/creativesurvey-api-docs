---

category_name: users
title: ユーザー認証の失効
priority: 998

---

# ユーザー認証の失効

## 認証されたユーザーのauth_tokenを失効させます。

email*:
: __string__ 
: 登録しているユーザーのメールアドレス

~~~
定義
DELETE https://creativesurvey.com/api/v1/users/sign_out

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/users/sign_out \
-d "user_login[email]=sample_email"

レスポンス例
{
  "success":true
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
