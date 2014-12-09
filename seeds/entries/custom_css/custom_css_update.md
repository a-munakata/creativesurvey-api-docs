---

category_name: custom_css
title: カスタムCSSの更新
action: update

---

# カスタムCSSの更新

## カスタムCSSを更新します。

`PUT https://creativesurvey.com/api/v1/surveys/:id/design/custom_css`

id _(必須)_:
: __integer__
: 更新するカスタムCSSを含むアンケートのID

source:
: __string__ _(デフォルト: "")_
: 適用するカスタムCSSのソース

~~~
リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/surveys/7849/design/custom_css \
-d "auth_token=sample_auth_token" \
-d "custom_css[source]=span{color:blue}"

レスポンス例
{
  "created_at": "2014-11-17T14:18:12+09:00",
  "design_id": 7843,
  "id": 7823,
  "inbox_id": 6,
  "source": "span{color:blue}",
  "updated_at": "2014-11-17T15:31:04+09:00"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
