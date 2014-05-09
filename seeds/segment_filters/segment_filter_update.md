---

category_name: segment_filter
title: フィルターの更新
priority: 996

---

# フィルターの更新

## セグメントのフィルターを更新します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

segment_filter_id*:
: __integer__
: セグメントフィルターのid

value:
: __string__
: セグメントする回答項目id
: 回答項目の取得については[こちら](#answer_item_index)を参照ください。

segment_id:
: __integer__
: 対象となるセグメントのid

question_id:
: __integer__
: セグメントする質問のid

inbox_id:
: __integer__
: 対象のセグメントを持つインボックスのidです。

~~~
定義
PUT https://creativesurvey.com/api/v1/segment_filters/segment_filter_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/segment_filters/14 \
-d "segment_filter[question_id]=1866" \
-d "segment_filter[value]=4386" \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "value": "4386",
  "updated_at": "2014-04-28T11:03:11+09:00",
  "segment_id": 119,
  "question_id": 1866,
  "inbox_id": 6,
  "id": 14,
  "created_at": "2014-04-28T10:47:05+09:00"
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

