---

category_name: plan
title: プランの解約予約
action: unsubscribe

---

# プランの解約予約

## プランの解約予約を行います。


`DELETE https://creativesurvey.com/api/v1/account/unsubscribe`
 
~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/account/unsubscribe \
-d "auth_token=sample_auth_token"


レスポンス例
{
  "name": "a.munakata+connect@4digit.jp",
  "email": "a.munakata+connect@4digit.jp",
  "role": "Light Blue",
  "box_role": "Light Blue",
  "share_limit": 0,
  "accounts": [
    {
      "id": 145,
      "name": "a.munakata+connect@4digit.jp",
      "email": "a.munakata+connect@4digit.jp",
      "current": true
    }
  ],
  "shares": [
    {
      "name": "a.munakata+connect@4digit.jp",
      "email": "a.munakata+connect@4digit.jp",
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
    "id": 132,
    "inbox_id": 145,
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
    {...},
    {...}
  ],
  "last_4_digits": "4444",
  "is_owner": true,
  "message": "プランの解約が予約されました。"
}

~~~


~~~
def rubyruby
  # ruby code goes here
end
~~~
