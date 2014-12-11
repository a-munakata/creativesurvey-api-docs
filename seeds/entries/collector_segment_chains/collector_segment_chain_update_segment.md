---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の更新(セグメント設定から)
parent_klass: collector
action: update

---

# 公開設定とセグメントの関連の更新(セグメント設定から)

## 公開設定とセグメントの関連を更新します。

`PUT https://creativesurvey.com/api/v1/segments/:id/collector_segment_chain/`

id _(必須)_:
: __integer__
: セグメントid

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/segments/7183/collector_segment_chain \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "collector_id": 8722,
  "created_at": "2014-11-17T17:16:58+09:00",
  "id": 497,
  "inbox_id": 6,
  "segment_id": 7183,
  "updated_at": "2014-11-17T17:16:58+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
