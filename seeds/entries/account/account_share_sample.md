---

category_name: account
title: ボックス共有メールサンプルの送信
action: share_sample

---

# ボックス共有メールサンプルの送信

## ボックス共有メールサンプルを、自分のメールアドレスに送信します。


`POST https://creativesurvey.com/api/v1/account/share_sample`

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/account/share_sample \
-d "auth_token=sample_auth_token"


レスポンス例
{
  "success": true,
  "message": "ボックスのテストシェアメールを送信しました"
}

~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
