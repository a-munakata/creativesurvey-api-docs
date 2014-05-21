---

category_name: creative
title: 画像一覧の取得
method: index

---

# 画像一覧の取得

## アンケートに使用されている画像の一覧を表示します。

survey_id _(必須)_:
: __integer__
: 対象となるアンケートid

~~~
定義
GET https://creativesurvey.com/api/v1/surveys/:survey_id/creatives

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/528/creatives \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
    "survey_id": 528,
    "id": 638,
    "priority": 1000,
    "original_remote_url": null,
    "trimming": "fit",
    "height": 400,
    "width": 400,
    "image": null
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

　
　
