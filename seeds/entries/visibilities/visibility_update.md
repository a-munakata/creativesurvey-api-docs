---

category_name: visibility
title: 表示ロジックの更新
method: update

---

# 表示ロジックの更新

## 表示ロジックを更新します。

`GET https://creativesurvey.com/api/v1/visibilities/:visibility_id`

id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

order_index:
: __integer__ _(デフォルト: null)_
: 表示ロジックの順序を0から始まる整数で指定します。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/visibilities/66 \
-d "visibility[order_index]=3" \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "question_id": 1911,
  "id": 66,
  "order_index": 3
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

