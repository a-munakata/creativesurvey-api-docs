---

category_name: creative_chain
title: 画像の関連一覧の取得 (回答補助項目から)
method: index
parent_klass: sub_item

---

# 画像の関連一覧の取得 (回答補助項目から)

## 回答補助項目に使用されている画像の関連を取得します。

`GET https://creativesurvey.com/api/v1/sub_items/:id/creative_chains`

id _(必須)_:
: __integer__
: 対象となる回答補助項目id

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/sub_items/287/creative_chains \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "id": 907,
  "creative_id": 131,
  "attachable_type": "SubItem",
  "attachable_id": 287
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
