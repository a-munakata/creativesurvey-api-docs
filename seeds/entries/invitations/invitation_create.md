---

category_name: invitation
title: 招待の送信
action: create

---

# 招待の送信

## 招待を送信します。

`POST https://creativesurvey.com/api/v1/invitations`

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/invitations \
-d "invitation[email]=a.munakata%B2sample@4digit.jp" \
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

　
　
