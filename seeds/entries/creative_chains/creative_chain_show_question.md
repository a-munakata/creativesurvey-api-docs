---

category_name: creative_chain
title: 画像の関連の取得(質問から)
action: show
parent_klass: question

---

# 画像の関連の取得(質問から)

## 質問に使用されている画像の関連を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/creative_chain`

id _(必須)_:
: __integer__
: 対象となる質問のID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/5720/creative_chain \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "attachable_id": 5720,
  "attachable_type": "Question",
  "created_at": "2014-11-17T14:18:15+09:00",
  "creative_id": 1826,
  "id": 33247,
  "inbox_id": 6,
  "updated_at": "2014-11-17T19:15:22+09:00"
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
