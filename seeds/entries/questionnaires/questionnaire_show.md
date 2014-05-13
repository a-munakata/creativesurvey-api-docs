---

category_name: questionnaire
title: 質問表の取得
method: show

---

# 質問表の取得

## 質問表を取得します。

questionnaire_id _(必須)_:
: __integer__
: 取得する質問表のid

~~~
定義
GET https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questionnaires/518 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-07T11:52:42+09:00",
  "survey_id": 527,
  "questions_count": 3,
  "inbox_id": 6,
  "id": 518,
  "current_order": 0,
  "created_at": "2014-04-29T21:53:53+09:00",
  "characters": "2問目leftrighcn1asd未設定次へ拡大を閉じる"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

