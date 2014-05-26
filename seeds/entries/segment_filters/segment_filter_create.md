---

category_name: segment_filter
title: フィルターの作成
method: create

---

# フィルターの作成

## セグメントのフィルターを作成します。

`POST https://creativesurvey.com/api/v1/segments/:id/segment_filters`

id _(必須)_:
: __integer__
: セグメントフィルターを追加するセグメントのid

value:
: __string__
: セグメントする回答項目id
: 回答項目の取得については[こちら](#answer_item_index)を参照ください。

question_id:
: __integer__
: セグメントする質問のid

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/segments/120/segment_filters \
-d "auth_token=YourAuthToken" \
-d "segment_filter[question_id]=1866" \
-d "segment_filter[value]=4386"

レスポンス例
{
  "segment_id": 120,
  "id": 23,
  "value": "4386",
  "question_id": 1866
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

