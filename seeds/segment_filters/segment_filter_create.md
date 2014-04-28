---

category_name: segment_filter
title: フィルターの作成
priority: 999

---

# フィルターの作成

## セグメントのフィルターを作成します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

segment_id*:
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
定義
POST https://creativesurvey.com/api/v1/segments/:segment_id/segment_filters

リクエスト例
curl -X POST https://creativesurvey.com/api/v1/segments/120/segment_filters \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "segment_filter[question_id]=1866" \
-d "segment_filter[value]=4386

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

