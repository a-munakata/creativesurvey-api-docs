---

category_name: creative_chain
title: 画像の関連の更新　(質問から)
method: update
parent_klass: question

---

# 画像の関連の更新　(質問から)

## 質問に使用されている画像の関連を更新します。

creative_chain_id _(必須)_:
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
定義
PUT https://creativesurvey.com/api/v1/questions/creative_chains/:creative_chain_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/questions/creative_chains/9650 \
-d "auth_token=YourAuthToken" \
-d "creative_chain[attachable_id]=1918" \
-d "creative_chain[creative_id]=3"

レスポンス例
{
  "id": 9650,
  "creative_id": 3,
  "attachable_type": "Question",
  "attachable_id": 1918
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
