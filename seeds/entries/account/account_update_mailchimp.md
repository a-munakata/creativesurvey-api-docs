---

category_name: account
title: メール受信設定
action: mailchimp

---

# メール受信設定

## クリエイティブサーベイから配信されるメールの受信設定を行います。


`PUT https://creativesurvey.com/api/v1/account/mailchimp`

is_subscribe:
: __boolean__
: 配信を受け付ける場合はtrue, パラメータを渡さないと配信停止設定が行われます。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/account/mailchimp \
-d "is_subscribe=true"
-d "auth_token=sample_auth_token"


レスポンス例
{
  "success": true,
  "status": "subscribed"
}
~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
