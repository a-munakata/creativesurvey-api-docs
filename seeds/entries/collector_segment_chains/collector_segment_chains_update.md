---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の更新
method: update

---

# 公開設定とセグメントの関連の更新

## 公開設定とセグメントの関連を更新します。

collector_segment_chain_id _(必須)_:
: __integer__
: 対象となる公開設定とセグメントの関連のid

~~~
定義
PUT https://creativesurvey.com/api/v1/collector_segment_chains/:collector_segment_chain_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/collector_segment_chains/8 \
-d "auth_token=YourAuthToken" \
-d "collector_segment_chain[segment_id]=130"


レスポンス例
{
  "id": 8,
  "segment_id": 130,
  "collector_id": 537
}

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
