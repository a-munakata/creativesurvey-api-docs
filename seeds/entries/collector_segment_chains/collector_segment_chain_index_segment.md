---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連一覧の取得　(セグメント設定から)
action: index
parent_klass: segment

---

# 公開設定とセグメントの関連一覧の取得　(セグメント設定から)

## 公開設定とセグメントの関連を一覧で取得します。

`GET https://creativesurvey.com/api/v1/segments/:id/collector_segment_chains`

id _(必須)_:
: __integer__
: 対象となるセグメント設定id

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/116/collector_segment_chains \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "created_at": "2014-04-29T23:09:23+09:00",
    "updated_at": "2014-05-28T12:46:25+09:00",
    "id": 5,
    "segment_id": 116,
    "collector_id": 528
  },
  {...},
  {...}
]

~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~
