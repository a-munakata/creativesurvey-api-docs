---

category_name: custom_css
title: カスタムCSSの取得
action: show

---

# カスタムCSSの取得

## カスタムCSSを個別で取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/design/custom_css`

id _(必須)_:
: __integer__
: 取得するカスタムCSSを含むアンケートのID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7849/design/custom_css \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-11-17T14:18:12+09:00",
  "design_id": 7843,
  "id": 7823,
  "inbox_id": 6,
  "source": "span {\ncolor: navy;\n}",
  "updated_at": "2014-11-17T15:21:21+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
