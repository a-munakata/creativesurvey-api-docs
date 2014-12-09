---

category_name: creative_chain
title: 画像の関連の更新(回答補助項目から)
action: update
parent_klass: sub_item

---

# 画像の関連の更新(回答補助項目から)

## 回答補助項目に使用されている画像の関連を更新します。

`PUT https://creativesurvey.com/api/v1/sub_items/:id/creative_chain/`

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
$ curl -X PUT https://creativesurvey.com/api/v1/sub_items/9077/creative_chain \
-d "auth_token=sample_auth_token" \
-d "creative_chain[attachable_id]=9077" \
-d "creative_chain[creative_id]=1826"

レスポンス例
{
  "attachable_id": 9077,
  "attachable_type": "SubItem",
  "created_at": "2014-11-17T20:19:05+09:00",
  "creative_id": 1826,
  "id": 33286,
  "inbox_id": 6,
  "updated_at": "2014-11-17T20:25:12+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
