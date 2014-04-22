---

category_name: agent
title: agent認証
priority: 999
is_disabled: true

---

# agent認証

## agent.creativesurvey.comの認証について

auth_token:
: __必須__
: 認証時に必要なトークンです。
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

~~~
リクエスト例
$ curl https://creativesurvey.com/api/v1/agent/auth_check -X GET \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "message": "auth_token is valid"
}
~~~

　
　
