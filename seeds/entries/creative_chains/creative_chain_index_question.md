---

category_name: creative_chain
title: 画像の関連一覧の取得(質問から)
action: index
parent_klass: question

---

# 画像の関連一覧の取得(質問から)

## 質問に使用されている画像の関連を取得します。

`GET https://creativesurvey.com/api/v1/questions/:id/creative_chains`

id _(必須)_:
: __integer__
: 対象となる質問id

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/questions/1884/creative_chains \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "id": 9650,
  "creative_id": 643,
  "attachable_type": "Question",
  "attachable_id": 1884
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
