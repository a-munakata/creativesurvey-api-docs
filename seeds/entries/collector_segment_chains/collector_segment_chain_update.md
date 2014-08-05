---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の更新
action: update

---

# 公開設定とセグメントの関連の更新

## 公開設定とセグメントの関連を更新します。

`PUT https://creativesurvey.com/api/v1/collector_segment_chains/:id`

id _(必須)_:
: __integer__
: 対象となる公開設定とセグメントの関連のid

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/collector_segment_chains/8 \
-d "auth_token=sample_auth_token" \
-d "collector_segment_chain[segment_id]=130"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "id": 8,
  "segment_id": 130,
  "collector_id": 537
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
