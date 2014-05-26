---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連の取得
method: show

---

# 公開設定とセグメントの関連の取得

## 公開設定とセグメントの関連を個別で取得します。

`GET https://creativesurvey.com/api/v1/collector_segment_chains/:id`

id _(必須)_:
: __integer__
: 対象となる公開設定とセグメントの関連のid

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/collector_segment_chains/8 \
-d "auth_token=YourAuthToken"
レスポンス例
{
  "id": 8,
  "segment_id": 129,
  "collector_id": 536
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
