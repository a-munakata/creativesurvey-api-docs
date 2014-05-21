---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連一覧の取得　(公開設定から)
method: index
parent_klass: collector

---

# 公開設定とセグメントの関連一覧の取得　(公開設定から)

## 公開設定とセグメントの関連を一覧で取得します。

collector_id _(必須)_:
: __integer__
: 対象となる公開設定id

~~~
定義
GET https://creativesurvey.com/api/v1/collectors/:collector_id/collector_segment_chains

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/collectors/536/collector_segment_chains \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
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

　
　
