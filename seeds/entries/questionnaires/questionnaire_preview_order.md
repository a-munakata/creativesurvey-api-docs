---

category_name: questionnaire
title: 質問順序のプレビュー
action: preview_order

---

# 質問順序のプレビュー

## 質問順序のプレビューをします。ランダム設定が行われていた際は、ランダム設定も反映されます。

`GET https://creativesurvey.com/api/v1/surveys/:id/questionnaire/preview_order`

id _(必須)_:
: __integer__
: 取得するアンケートのid

##### generate_orderに、質問IDが配列で返ってきます。この配列は、ランダム設定が反映された後の順序が返ってきます。random_regionは、ランダマイズが適応される範囲が返ってきます。

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7880/questionnaire/preview_order \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "characters": null,
  "created_at": "2014-12-10T11:08:40+09:00",
  "current_order": 0,
  "id": 7880,
  "inbox_id": 6,
  "questions_count": 0,
  "survey_id": 7896,
  "updated_at": "2014-12-10T11:08:40+09:00",
  "generate_order": [
    [
      5877
    ],
    [
      5881
    ]
  ],
  "random_region": [
    5877,
    5880,
    5878,
    5879,
    5875,
    5876
  ]
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

