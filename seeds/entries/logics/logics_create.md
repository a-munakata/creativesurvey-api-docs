---

category_name: logic
title: 分岐設定の作成
method: create

---

# 分岐設定の作成

## 分岐設定を作成します。

question_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

order_index:
: __integer__ _(デフォルト: 0)_
: 分岐設定の順序
: 0から始まる整数で指定します。

is_valid:
: __boolean__ _(デフォルト: true)_
: 有効かどうか

~~~
定義
POST https://creativesurvey.com/api/v1/questions/:question_id/logics

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questions/1876/logics \
-d "logic[order_index]=3" \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "question_id": 1876,
  "id": 139,
  "order_index": 3,
  "is_valid": true,
  "destination_id": null,
  "answer_item_id": null
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

