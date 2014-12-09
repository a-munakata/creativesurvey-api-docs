---

category_name: creative_chain
title: 画像の関連の更新(質問から)
action: update
parent_klass: question

---

# 画像の関連の更新(質問から)

## 質問に使用されている画像の関連を更新します。

`PUT https://creativesurvey.com/api/v1/questions/:id/creative_chain`

id _(必須)_:
: __integer__
: 対象となる画像の関連id

creative_id:
: __integer__ _(デフォルト: null)_
: 画像のid

attachable_type:
: __string__
: 画像に関連するオブジェクト名
: 詳しくは[creative_chain](#creative_chain)をご覧ください。

attachable_id:
: 画像に関連するオブジェクトのid
: __integer__
: 詳しくは[creative_chain](#creative_chain)をご覧ください。

~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/questions/5723/creative_chain \
-d "auth_token=sample_auth_token" \
-d "creative_chain[attachable_id]=5721" \
-d "creative_chain[creative_id]=1826"

レスポンス例
{
  "attachable_id": 5721,
  "attachable_type": "Question",
  "created_at": "2014-11-17T17:09:48+09:00",
  "creative_id": 1826,
  "id": 33264,
  "inbox_id": 6,
  "updated_at": "2014-11-17T19:22:40+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
