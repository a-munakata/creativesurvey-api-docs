---

category_name: segment_target
title: セグメントターゲットの作成
action: create

---

# セグメントターゲットの作成

## セグメントターゲットを作成します。

`POST https://creativesurvey.com/api/v1/segment_items/:id/segment_targets`

id _(必須)_:
: __integer__
: セグメントアイテムID

quesion_id _(必須)_:
: __integer__
: セグメントの指定先にする質問のID

value _(必須)_:
: __integer__
: セグメントの条件にする値を指定します。
: 質問タイプによって有効な値が変わります。

subject:
: __integer__
: question_idで指定した質問の、どの値をターゲットにするか指定します。
: 質問タイプによって有効な値が変わります。
: 1: answer_item_id
: 2: sub_item_id
: 3: value
: 4: x
: 5: y
: 6: w
: 7: h
: 8: impression

verb:
: __integer__
: valueに等しいかどうか、条件を判定する式を指定します。
: 質問タイプによって使用出来る式は変わります。
: 1: =
: 2: !=
: 3: >
: 4: >=
: 5: <
: 6: <=

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/segment_items/5/segment_targets \
-d "segment_target[question_id]=5879" \
-d "segment_target[subject]=1" \
-d "segment_target[value]=11001" \
-d "segment_target[verb]=1" \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "created_at": "2014-12-10T19:19:59+09:00",
  "id": 8,
  "inbox_id": 6,
  "question_id": 5879,
  "segment_item_id": 5,
  "subject": 1,
  "updated_at": "2014-12-10T19:19:59+09:00",
  "value": "11001",
  "verb": 1
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

