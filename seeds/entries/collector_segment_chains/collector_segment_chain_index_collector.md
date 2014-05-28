---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連一覧の取得　(公開設定から)
action: index
parent_klass: collector

---

# 公開設定とセグメントの関連一覧の取得　(公開設定から)

## 公開設定とセグメントの関連を一覧で取得します。

`GET https://creativesurvey.com/api/v1/collectors/:id/collector_segment_chains`

id _(必須)_:
: __integer__
: 対象となる公開設定id

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/collectors/536/collector_segment_chains \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "id": 8,
    "segment_id": 129,
    "collector_id": 536
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

　
　
