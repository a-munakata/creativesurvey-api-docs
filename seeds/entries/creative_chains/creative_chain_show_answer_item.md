---

category_name: creative_chain
title: 画像の関連の取得(回答項目から)
action: show
parent_klass: answer_item

---

# 画像の関連の取得(回答項目から)

## 回答項目に使用されている画像の関連を取得します。

`GET https://creativesurvey.com/api/v1/answer_items/:id/creative_chain`

id _(必須)_:
: __integer__
: 対象となる回答項目のID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/answer_items/10677/creative_chain \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "attachable_id": 10677,
  "attachable_type": "AnswerItem",
  "created_at": "2014-11-17T19:27:24+09:00",
  "creative_id": 1826,
  "id": 33267,
  "inbox_id": 6,
  "updated_at": "2014-11-17T20:13:13+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
