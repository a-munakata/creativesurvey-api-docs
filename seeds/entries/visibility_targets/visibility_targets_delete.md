---

category_name: visibility_target
title: 表示ターゲットの削除
method: delete

---

# 表示ターゲットの削除

## 表示ターゲットを削除します。

`DELETE https://creativesurvey.com/api/v1/visibility_targets/:visibility_target_id`

id _(必須)_:
: __integer__
: 削除する表示ターゲットのid

~~~

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/visibility_targets/82 \
-u "auth_token=YourAuthToken":

レスポンス例
{
  "visibility_id": 71,
  "id": 82,
  "answer_item_id": 4494
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

