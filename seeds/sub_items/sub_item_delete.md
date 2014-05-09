---

category_name: sub_item
title: 回答補助項目の削除
priority: 995

---

# 回答補助項目の削除

## 回答項目の補助項目を削除します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

sub_item_id*:
: __integer__
: 削除する回答補助項目のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/sub_items/:sub_item_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/sub_items/2731 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"


レスポンス例
{
  "updated_at": "2014-04-23T11:04:32+09:00",
  "sentence": "Q2",
  "placeholder": "",
  "order_index": 5,
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

