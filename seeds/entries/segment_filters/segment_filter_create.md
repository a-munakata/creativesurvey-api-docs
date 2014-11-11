---

category_name: segment_filter
title: フィルターの作成
action: create

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
$ curl -X POST https://creativesurvey.com/api/v1/segments/340/segment_filters \
-d "auth_token=sample_auth_token" \
-d "segment_filter[question_id]=5188" \
-d "segment_filter[value]=9680"

レスポンス例
{
  "created_at": "2014-10-31T17:05:12+09:00",
  "id": 340,
  "inbox_id": 6,
  "question_id": 5188,
  "segment_id": 775,
  "updated_at": "2014-10-31T17:05:12+09:00",
  "value": "9680"
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

