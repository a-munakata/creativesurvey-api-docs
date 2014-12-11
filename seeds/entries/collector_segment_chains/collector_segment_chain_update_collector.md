---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の更新(公開設定から)
parent_klass: collector
action: update

---

# 公開設定とセグメントの関連の更新(公開設定から)

## 公開設定とセグメントの関連を更新します。

`PUT https://creativesurvey.com/api/v1/collectors/:id/collector_segment_chain/`

id _(必須)_:
: __integer__
: 対象となるコレクターのID

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/collectors/8722/collector_segment_chain \
-d "collector_segment_chain[segment_id]=787" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "collector_id": 8722,
  "created_at": "2014-11-17T18:29:39+09:00",
  "id": 498,
  "inbox_id": 6,
  "segment_id": 787,
  "updated_at": "2014-11-17T18:32:02+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
