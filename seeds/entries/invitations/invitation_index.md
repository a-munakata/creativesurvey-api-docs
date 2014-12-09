---

category_name: invitation
title: 招待一覧の取得
action: index

---

# 招待一覧の取得

## 承認された招待一覧を取得します。

`GET https://creativesurvey.com/api/v1/invitations`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/invitations \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "invitees": [
    {
      "email": "a.munakata+invited@4digit.jp",
      "name": "a.munakata+invited@4digit.jp"
    },
    {
      "email": "a.munakata+invited_2@4digit.jp",
      "name": "a.munakata+invited_2@4digit.jp"
    }
  ],
  "share_base": 101
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
