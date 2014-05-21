---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の作成　(公開設定から)
method: create
parent_klass: collector

---

# 公開設定とセグメントの関連の作成　(公開設定から)

## 公開設定とセグメントの関連を作成します。

collector_id _(必須)_:
: __integer__
: 対象となる公開設定id

segment_id:
: __integer__ _(デフォルト: null)_
: 公開設定を関連付けたいセグメントのid
: 詳しくは[collector_segment_chain](#collector_segment_chain)を参照ください。

~~~
定義
POST https://creativesurvey.com/api/v1/collectors/:collector_id/collector_segment_chains

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/collectors/546/collector_segment_chains \
-u "auth_token=YourAuthToken": \
-d "collector_segment_chain[segment_id]=116"

レスポンス例
{
  "id": 10,
  "segment_id": 116,
  "collector_id": 546
}


リソースが重複した場合
{
  "collector_id": [
    "はすでに存在します。"
  ]
}
~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
