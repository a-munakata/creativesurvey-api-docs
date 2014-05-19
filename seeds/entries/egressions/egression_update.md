---

category_name: egression
title: 最終画面の変更
method: update

---

# 最終画面の変更

## 最終画面の変更について

egression_id _(必須)_:
: __integer__
: 更新する最終画面のid

rendered_sentence:
: __string__ _(デフォルト: "")_
: 最終画面の文言

is_redirect:
: __boolean__ _(デフォルト: false)_
: trueの場合、最終画面の表示ではなくリダイレクトをさせます。

redirect_url:
: __string__ _(デフォルト: null)_
: リダイレクトを指定する場合のurl

question_type:
: __integer__ _(デフォルト: 1)_
: 質問タイプ。 1,2,4から選択します。
: 1: テキストのみ
: 2: テキストと画像
: 4: テキストと長文

description:
: __string__ _(デフォルト: "")_
: 注意書きや補足などのテキストを入力します。

~~~
定義
PUT https://creativesurvey.com/api/v1/egressions

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/egressions/507 \
-d "auth_token=YourAuthToken" \
-d "egression[redirect_url]=http://google.com" \
-d "egression[rendered_sentence]=最終画面です。"

レスポンス例
{
  "questionnaire_id": 507,
  "id": 507,
  "question_type": 3,
  "description": "",
  "rendered_sentence": "最終画面です。",
  "sentence": null,
  "redirect_url": "http://google.com",
  "is_redirect": true
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
