---

category_name: inbox
title: ボックスへの招待を許可する
action: connect_account

---

# ボックスへの招待を許可する

## ボックスへの招待を許可します。許可を行うと、招待されたボックスが共有されます。

`PUT https://creativesurvey.com/api/v1/account/share`

token _(必須)_:
: __string__
: 招待tokenを入力します。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/account/share \
-d "token=sample_token" \
-d "auth_token=sample_auth_token"


レスポンス例
{
  "name": "sample@creativesurvey.com",
  "email": "sample@creativesurvey.com",
  "role": "White",
  "box_role": "White",
  "share_limit": 0,
  "accounts": [
    {
      "id": 6,
      "name": "a.munakata",
      "email": "sample@creativesurvey.com",
      "current": false
    },
    {
      "id": 144,
      "name": "sample@creativesurvey.com",
      "email": "sample@creativesurvey.com",
      "current": true
    }
  ],
  "shares": [
    {
      "name": "sample@creativesurvey.com",
      "email": "sample@creativesurvey.com",
      "current": true
    }
  ],
  "share_invitations": [],
  "avatar": {
    "image": {
      "fit": {
        "url": "/assets/ng/common/anonymous.png"
      }
    }
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
    "created_at": "2014-08-12T21:39:33+09:00",
    "glacier_color": "#72b1c0",
    "glacier_label": null,
    "id": 131,
    "inbox_id": 144,
    "moody_blue_color": "#747dc0",
    "moody_blue_label": null,
    "novel_color": "#999999",
    "novel_label": null,
    "pale_violet_red_color": "#dc7b9a",
    "pale_violet_red_label": null,
    "updated_at": "2014-08-12T21:39:33+09:00",
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
      "action": "connectAccount('60577fda3e72a4776401f34c24e57a5d5b0e3ab0')",
      "action_name": "承認する",
      "created_at": "2014-12-09T14:09:50+09:00",
      "description": "sample@creativesurvey.comさんからボックスがシェアされました。",
      "id": 25,
      "is_unread": false,
      "notified_at": "2014-12-09T14:09:50+09:00",
      "updated_at": "2014-12-09T14:11:07+09:00",
      "url": null,
      "user_id": 41
    },
    {
      "action": null,
      "created_at": "2014-12-02T16:19:19+09:00",
      "description": "94070",
      "id": 6,
      "message": null,
      "notified_at": "2014-12-02T16:19:19+09:00",
      "updated_at": "2014-12-02T16:19:19+09:00",
      "url": null,
      "is_unread": false
    },
    {
      "action": null,
      "created_at": "2014-10-10T16:07:40+09:00",
      "description": "hello",
      "id": 5,
      "message": null,
      "notified_at": "2014-10-10T16:07:40+09:00",
      "updated_at": "2014-10-10T16:07:40+09:00",
      "url": null,
      "is_unread": false
    },
    {
      "action": null,
      "created_at": "2014-10-10T16:06:53+09:00",
      "description": "hello",
      "id": 4,
      "message": null,
      "notified_at": "2014-10-10T16:06:53+09:00",
      "updated_at": "2014-10-10T16:06:53+09:00",
      "url": null,
      "is_unread": false
    },
    {
      "action": null,
      "created_at": "2014-08-25T18:48:44+09:00",
      "description": "これもテストです",
      "id": 3,
      "message": null,
      "notified_at": "2014-08-25T18:48:44+09:00",
      "updated_at": "2014-08-25T18:48:44+09:00",
      "url": null,
      "is_unread": false
    },
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
    }
  ],
  "last_4_digits": null,
  "is_owner": true,
  "message": "アカウントのシェアが完了しました"
}

~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
