---

category_name: sub_item
title: 回答補助項目の取得
priority: 997

---

# 回答補助項目の取得

## 回答項目の補助項目を取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

sub_item_id*:
: __integer__
: 取得する回答補助項目のid

~~~
定義
GET https://creativesurvey.com/api/v1/sub_items/:sub_item_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/sub_items/2731 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T10:40:17+09:00",
  "sentence": "Q1",
  "placeholder": "",
  "order_index": 1,
  "answer_type": 11,
  "attachable_id": 1839,
  "attachable_type": "Question",
  "created_at": "2014-04-23T10:39:33+09:00",
  "id": 2731,
  "inbox_id": 6,
  "max_value": null,
  "min_value": null
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

