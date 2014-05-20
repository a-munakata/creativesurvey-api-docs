---

category_name: creative_chain
title: 画像の関連一覧の取得 (回答項目から)
method: index
parent_klass: answer_item

---

# 画像の関連一覧の取得 (回答項目から)

## 回答項目に使用されている画像の関連を取得します。

answer_item_id _(必須)_:
: __integer__
: 対象となる回答項目id

~~~
定義
GET https://creativesurvey.com/api/v1/answer_items/:answer_item_id/creative_chains

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/answer_items/4501/creative_chains \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "id": 9650,
  "creative_id": 3,
  "attachable_type": "AnswerItem",
  "attachable_id": 4501
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

　
　
