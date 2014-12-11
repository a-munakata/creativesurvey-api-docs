---

category_name: account
title: アカウント情報の取得
action: show

---

# アカウント情報の取得

## アカウント情報を取得します。

`GET https://creativesurvey.com/api/v1/account`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/account \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "name": "a.munakata",
  "email": "sample@creativesurvey.com",
  "role": "Black",
  "box_role": "Black",
  "share_limit": 9,
  "accounts": [
    {
      "id": 6,
      "name": "a.munakata",
      "email": "sample@creativesurvey.com",
      "current": true
    }
  ],
  "shares": [
    {
      "name": "a.munakata",
      "email": "sample@creativesurvey.com",
      "current": true
    }
  ],
  "share_invitations": [
    {
      "id": 31,
      "email": "a.munakata+hello@4digit.jp"
    },
    {
      "id": 32,
      "email": "a.munakata+helloooo@4digit.jp"
    }
  ],
  "avatar": {
    "created_at": "2014-08-13T10:42:28+09:00",
    "id": 2,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/avatar/image/2/68.jpeg",
      "fit": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/avatar/image/2/fit_68.jpeg"
      }
    },
    "level": 0,
    "updated_at": "2014-08-20T10:59:36+09:00",
    "user_id": 2
  },
  "color_label": {
    "apple_color": "#7ba444",
    "apple_label": null,
    "bright_sun_color": "#e7b727",
    "bright_sun_label": null,
    "carrot_orange_color": "#eaa21a",
    "carrot_orange_label": null,
    "cinnabar_color": "#d24623",
    "cinnabar_label": null,
    "created_at": "2014-08-12T21:39:29+09:00",
    "glacier_color": "#72b1c0",
    "glacier_label": null,
    "id": 6,
    "inbox_id": 6,
    "moody_blue_color": "#747dc0",
    "moody_blue_label": null,
    "novel_color": "#999999",
    "novel_label": null,
    "pale_violet_red_color": "#dc7b9a",
    "pale_violet_red_label": null,
    "updated_at": "2014-08-12T21:39:29+09:00",
    "colors": [
      "glacier",
      "moody_blue",
      "cinnabar",
      "apple",
      "pale_violet_red",
      "bright_sun",
      "carrot_orange",
      "novel"
    ]
  },
  "notice_count": 0,
  "notifications": [
    {
      "action": null,
      "created_at": "2014-08-25T17:56:13+09:00",
      "description": "これは通知のテストです",
      "id": 2,
      "message": null,
      "notified_at": "2014-08-25T17:56:13+09:00",
      "updated_at": "2014-08-25T17:56:13+09:00",
      "url": null,
      "is_unread": false
    },
    {...},
    {}
  ],
  "last_4_digits": "4444",
  "is_owner": true
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
