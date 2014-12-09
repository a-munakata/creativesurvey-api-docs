---

category_name: transition
title: トランジションの取得
action: show

---

# トランジションの取得

## トランジションを取得します。

`GET https://creativesurvey.com/api/v1/transitions/:id`

id _(必須)_:
: __integer__
: 取得するトランジションのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/transitions/6 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-10-01T23:24:30+09:00",
  "id": 6,
  "image": {
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/transition/image/6/slide.png",
    "thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/transition/image/6/thumb_slide.png"
    }
  },
  "label": "スライド",
  "name": "transition-slide",
  "order_index": 5,
  "updated_at": "2014-10-10T15:30:45+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
