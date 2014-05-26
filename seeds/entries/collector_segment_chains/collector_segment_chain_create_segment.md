---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の作成　(セグメント設定から)
method: create
parent_klass: segment

---

# 公開設定とセグメントの関連の作成　(セグメント設定から)

## 公開設定とセグメントの関連を作成します。

`POST https://creativesurvey.com/api/v1/segments/:id/collector_segment_chains`

id _(必須)_:
: __integer__
: 対象となるセグメント設定id

collector_id:
: __integer__ _(デフォルト: null)_
: 公開設定を関連付けたい公開設定のid
: 詳しくは[collector_segment_chain](#collector_segment_chain)を参照ください。

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/segments/116/collector_segment_chains \
-u "auth_token=YourAuthToken": \
-d "collector_segment_chain[collector_id]=527"

レスポンス例
{
  "id": 11,
  "segment_id": 116,
  "collector_id": 527
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

　
　
