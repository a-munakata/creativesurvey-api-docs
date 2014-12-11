---

category_name: statistic
title: 表形式データの取得
action: show

---

# 表形式データの取得

## 表形式データのダウンロードURL、データの作成状況を取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/statistic`

id _(必須)_:
: __integer__
: アンケートのid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/25562/statistic \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "success": true,
  "done": true,
  "download_url": "https://creativesurvey.com/api/v1/surveys/25562/statistic.csv"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

