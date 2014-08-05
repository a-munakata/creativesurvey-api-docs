---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の作成　(公開設定から)
action: create
parent_klass: collector

---

# 公開設定とセグメントの関連の作成　(公開設定から)

## 公開設定とセグメントの関連を作成します。

`POST https://creativesurvey.com/api/v1/collectors/:id/collector_segment_chains`

id _(必須)_:
: __integer__
: 対象となる公開設定id

segment_id:
: __integer__ _(デフォルト: null)_
: 公開設定を関連付けたいセグメントのid
: 詳しくは[collector_segment_chain](#collector_segment_chain)を参照ください。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/collectors/546/collector_segment_chains \
-d "auth_token=sample_auth_token" \
-d "collector_segment_chain[segment_id]=116"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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

　
　
