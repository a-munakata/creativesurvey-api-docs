---

category_name: segment_filter
title: フィルターの更新
method: update

---

# フィルターの更新

## セグメントのフィルターを更新します。

segment_filter_id _(必須)_:
: __integer__
: セグメントフィルターのid

value:
: __string__
: セグメントする回答項目id
: 回答項目の取得については[こちら](#answer_item_index)を参照ください。

question_id:
: __integer__
: セグメントする質問のid

~~~
定義
PUT https://creativesurvey.com/api/v1/segment_filters/segment_filter_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/segment_filters/22 \
-d "auth_token=YourAuthToken" \
-d "segment_filter[question_id]=1866" \
-d "segment_filter[value]=4386"

レスポンス例
{
  "segment_id": 131,
  "id": 22,
  "value": "4386",
  "question_id": 1866
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

