---

category_name: creative_chain
title: 画像の関連の(回答補助項目から)
action: show
parent_klass: sub_item

---

# 画像の関連の更新(回答補助項目から)

## 回答補助項目に使用されている画像の関連を更新します。

`GET https://creativesurvey.com/api/v1/sub_items/:id/creative_chain/`

id _(必須)_:
: __integer__
: 対象となる回答補助項目のID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/sub_items/9077/creative_chain \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "attachable_id": 9077,
  "attachable_type": "SubItem",
  "created_at": "2014-11-17T20:19:05+09:00",
  "creative_id": 1826,
  "id": 33286,
  "inbox_id": 6,
  "updated_at": "2014-11-17T20:20:20+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
