---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の更新(公開設定から)
parent_klass: collector
action: show

---

# 公開設定とセグメントの関連の更新(公開設定から)

## 公開設定とセグメントの関連を更新します。

`PUT https://creativesurvey.com/api/v1/collectors/:id/collector_segment_chain/`

id _(必須)_:
: __integer__
: 対象となるコレクターのID

segment_id:
: __integer__
: コレクターと紐づける、対象セグメントのID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/collectors/8722/collector_segment_chain \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "collector_id": 8722,
  "created_at": "2014-11-17T17:16:58+09:00",
  "id": 497,
  "inbox_id": 6,
  "segment_id": 786,
  "updated_at": "2014-11-17T17:16:58+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
