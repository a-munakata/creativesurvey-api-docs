---

category_name: inbox
title: ボックスの共有
action: share_account

---

# ボックスの共有

## ボックスを共有します。

`POST https://creativesurvey.com/api/v1/account/share`

email _(必須)_:
: __string__
: ボックスを共有するアカウントのemailを指定します。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/account/share \
-d "email=invite_sample@4digit.jp" \
-d "auth_token=sample_auth_token"


レスポンス例
{
  "name": "a.munakata",
  "email": "sample@creativesurvey.com",
  "role": "Ultramarine",
  "box_role": "Ultramarine",
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
      "id": 42,
      "email": "invite_sample@4digit.jp"
    }
  ],
  "avatar": {
    "created_at": "2014-08-13T10:42:28+09:00",
    "id": 2,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/avatar/image/2/sample.jpeg",
      "fit": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/avatar/image/2/fit_sample.jpeg"
      }
    },
    "level": 0,
    "updated_at": "2014-10-30T15:15:56+09:00",
    "user_id": 2
  },
  "color_label": {
    "apple_color": "red",
    "apple_label": "important",
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
    "updated_at": "2014-12-09T12:53:21+09:00",
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
  "last_4_digits": "4444",
  "is_owner": true,
  "message": "ボックスのシェアメールが送信されました"
}

~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
