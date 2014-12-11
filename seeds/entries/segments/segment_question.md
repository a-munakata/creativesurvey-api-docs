---

category_name: segment
title: 質問ごとの回答の取得
action: question

---

# 質問ごとの回答の取得

## セグメント条件に一致し、その中から質問で絞り込みをした回答一覧を取得します。


`GET https://creativesurvey.com/api/v1/segments/:id/questions/:question_id`

id _(必須)_:
: __integer__
: セグメントのid

question_id _(必須)_:
: __integer__
: 絞り込み条件の質問ID

page:
: __integer__
: 回答は500件ずつ取得されます。
: pageを指定する事で、500件ごとにオフセットされます。


##### 返り値は質問タイプによって変わります。回答項目ID、回答補助項目ID、xの値、yの値などでグルーピングされた回答数がレスポンスとして返ります。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/7184/questions/5897 \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "11001": 2,
  "11002": 3
}
  
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

