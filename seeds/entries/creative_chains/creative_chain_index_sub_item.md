---

category_name: creative_chain
title: 画像の関連一覧の取得 (回答補助項目から)
action: index
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
-d "auth_token=YourAuthToken"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
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

　
　
