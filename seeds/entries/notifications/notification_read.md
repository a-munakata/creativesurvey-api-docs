---

category_name: notification
title: 通知を既読にする
action: read

---

# 通知を既読にする

## アカウントに紐づいた通知を既読済みにします。

`PUT https://creativesurvey.com/api/v1/notifications`

ids:
: 既読ステータスにする通知のidsを配列で渡します。

##### 通知(notification)はアカウントに紐づいているので、[account#show](#account_show)より現在の通知が取得出来ます。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/notifications \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "success": true
}
~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~


