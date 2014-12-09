---

category_name: account
title: メール受信設定の取得
action: mailchimp

---

# メール受信設定の取得

## クリエイティブサーベイから配信されるメールの受信設定を取得します。


`GET https://creativesurvey.com/api/v1/account/mailchimp`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/account/mailchimp \
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
