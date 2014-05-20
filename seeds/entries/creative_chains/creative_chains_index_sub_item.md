---

category_name: creative_chain
title: 画像の関連一覧の取得 (回答補助項目から)
method: index
parent_klass: sub_item

---

# 画像の関連一覧の取得 (回答補助項目から)

## 回答補助項目に使用されている画像の関連を取得します。

sub_item_id _(必須)_:
: __integer__
: 対象となる回答補助項目id

~~~
定義
GET https://creativesurvey.com/api/v1/sub_items/:sub_item_id/creative_chains

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/sub_items/287/creative_chains \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "id": 907,
  "creative_id": 131,
  "attachable_type": "SubItem",
  "attachable_id": 287
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

　
　
