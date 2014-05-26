---

category_name: theme
title: テーマ一覧の取得
method: index

---

# テーマ一覧の取得

## アンケートに使用出来るテーマ一覧を取得します。

`GET https://creativesurvey.com/api/v1/themes`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/themes \
-d "auth_token=YourAuthToken"
レスポンス例
[
  {
    "id": 1,
    "name": "デフォルト・ブルー"
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

　
　
