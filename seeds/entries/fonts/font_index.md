---

category_name: font
title: 和文フォント一覧の取得
method: index

---

# 和文フォント一覧の取得

## アンケートに使用出来る和文フォント一覧を取得します。

`GET https://creativesurvey.com/api/v1/fonts`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/fonts \
-d "auth_token=YourAuthToken"
レスポンス例
[
  {
    "id": 105,
    "english_name": "TsukuAMDMinStd-E",
    "name": "筑紫A見出ミン Std E ",
    "image": "TsukuAMDMinStd-E.png"
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

　
　
