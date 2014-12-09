---

category_name: plan
title: カード情報の削除
action: destroy_card

---

# カード情報の削除

## カード情報を削除します。プランを購読している際は、まずダウングレードを行ってください。


`DELETE https://creativesurvey.com/api/v1/account/card`

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/account/card \
-d "auth_token=sample_auth_token"


レスポンス例
{
  "name": "a.munakata+check@4digit.jp",
  "email": "a.munakata+check@4digit.jp",
  "role": "White",
  "box_role": "White",
  "share_limit": 0,
  "accounts": [
    {
      "id": 144,
      "name": "a.munakata+check@4digit.jp",
      "email": "a.munakata+check@4digit.jp",
      "current": true
    }
  ],
  "shares": [
    {
      "name": "a.munakata+check@4digit.jp",
      "email": "a.munakata+check@4digit.jp",
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
  "notice_count": 5,
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
      "is_unread": true
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
      "is_unread": true
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
      "is_unread": true
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
      "is_unread": true
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
      "is_unread": true
    }
  ],
  "last_4_digits": null,
  "is_owner": true
}

~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
