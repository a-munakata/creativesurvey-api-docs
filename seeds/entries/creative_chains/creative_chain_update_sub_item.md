---

category_name: creative_chain
title: 画像の関連の更新　(回答補助項目から)
method: update
parent_klass: sub_item

---

# 画像の関連の更新　(回答補助項目から)

## 回答補助項目に使用されている画像の関連を更新します。

`PUT https://creativesurvey.com/api/v1/sub_items/creative_chains/:id`

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
$ curl -X PUT https://creativesurvey.com/api/v1/sub_items/creative_chains/907 \
-d "auth_token=YourAuthToken" \
-d "creative_chain[attachable_id]=289" \
-d "creative_chain[creative_id]=4"

レスポンス例
{
  "id": 907,
  "creative_id": 4,
  "attachable_type": "SubItem",
  "attachable_id": 289
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
