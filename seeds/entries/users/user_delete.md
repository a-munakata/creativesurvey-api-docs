---

category_name: user
title: ユーザー認証の失効
action: delete

---

# ユーザー認証の失効

## 認証されたユーザーのauth_tokenを失効させます。

`DELETE https://creativesurvey.com/api/v1/users/sign_out`

email _(必須)_:
: __string__ 
: 登録しているユーザーのメールアドレス

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/users/sign_out \
-d "user_login[email]=sample_email"

レスポンス例
{
  "success":true
}

エラー例
{
  "success":false
}
~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
