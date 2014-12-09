---

category_name: transition
title: トランジション一覧の取得
action: index

---

# トランジション一覧の取得

## アンケートに使用することが出来るトランジション一覧を取得します。

`GET https://creativesurvey.com/api/v1/transitions`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/transitions \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "created_at": "2014-10-01T23:24:31+09:00",
    "id": 10,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/transition/image/10/alpha-slide.png",
      "thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/transition/image/10/thumb_alpha-slide.png"
      }
    },
    "label": "アルファスライド",
    "name": "transition-alpha-slide",
    "order_index": 1,
    "updated_at": "2014-10-10T15:30:46+09:00"
  },
  {...},
  {...}
]
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
