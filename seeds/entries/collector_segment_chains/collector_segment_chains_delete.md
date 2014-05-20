---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の削除
method: delete

---

# 公開設定とセグメントの関連の削除

## 公開設定とセグメントの関連を削除します。

collector_segment_chain_id _(必須)_:
: __integer__
: 対象となる公開設定とセグメントの関連のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/collector_segment_chains/:collector_segment_chain_id

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/collector_segment_chains/8 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "id": 8,
  "segment_id": 129,
  "collector_id": 536
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

　
　
