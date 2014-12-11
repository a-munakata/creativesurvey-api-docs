---

category_name: statistic
title: 表形式データの作成
action: reserve

---

# 表形式データの作成

## 表形式データを作成します。表形式データの作成が完了すると、メールで通知されます。データ作成後は、[statistic#show](#statistic_show)より、ダウンロードURLが取得出来るようになります。

`POST https://creativesurvey.com/api/v1/surveys/:id/statistic/reserve`

id _(必須)_:
: __integer__
: アンケートのid

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/25562/statistic/reserve \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "success": true,
  "message": "表形式データの作成を受け付けました。完了後にメールで通知されます。"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

