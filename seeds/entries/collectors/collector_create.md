---

category_name: collector
title: 公開設定の作成
action: create

---

# 公開設定の作成

## 公開設定の作成

`POST https://creativesurvey.com/api/v1/surveys/:id/collectors`

id _(必須)_:
: __integer__
: 対象となるアンケートのid

name _(必須)_:
: __string__ _(デフォルト: "公開設定")_
: 公開設定の名前

is_answer_limit:
: __boolean__ _(デフォルト: false)_
: 回答数によって自動的に終了させるかどうか
: trueを指定すると、指定した回答数(answer_limit)に達したら自動的に終了させます。

answer_limit:
: __integer__ _(デフォルト: null)_
: 回答数の制限数
: is_answer_limitがtrueの場合適用され、指定した制限数に達すると自動的にアンケートを終了します。

is_due:
: __boolean__ __(デフォルト: false)__
: 日付によって自動的に終了させるかどうか
: trueを指定すると、日付(due)で回答の受付を終了します。

due:
: __timestamp__ _(デフォルト: null)_
: 指定した日時にアンケートを自動的に終了させます。
: is_dueがtrueの際に、指定した日付で自動的にアンケートを終了します。
 
ban_mobile:
: __boolean__ _(デフォルト: false)_
: 回答をPC専用にするかどうか
: trueを指定すると、モバイルからの回答を禁止します。

can_return:
: __boolean__ _(デフォルト: false)_
: 戻って回答を修正出来るかどうか
: trueを指定すると、回答者は質問をさかのぼって回答を修正出来るようになります。

disallow_duplicate_machine:
: __boolean__ _(デフォルト: false)_
: 繰り返し回答を制限するかどうか
: trueを指定すると、回答者は1度しか回答出来なくなります。

is_mail:
: __boolean__ _(デフォルト: false)_
: 回答を即時メールするかどうか
: trueを指定すると、回答があったらメールで通知します。

is_ogp:
: __boolean__ _(デフォルト: false)_
: trueを指定するとOpen Graph protocolの設定を有効にします。

og_title:
: __string__ _(デフォルト: null)_
: アンケートを共有する際のog:titleを指定します。

og_description:
: __string__ _(デフォルト: null)_
: アンケートを共有する際のog:descriptionを指定します。

og_image:
: アンケートを共有する際のog:imageを指定します。
: 画像パスの前に@を付けて画像を指定します。

is_password:
: __boolean__ _(デフォルト: false)_
: trueを指定するとパスワードを有効にします。

password:
: __string__ _(デフォルト: null)_
: パスワードを指定します。is_passwordがtrueの時に有効になります。

request_billboard:
: __boolean__ _(デフォルト: false)_
: trueを指定すると、ビルボードへの掲載を希望します。

~~~

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/surveys/520/collectors \
-F "auth_token=YourAuthToken" \
-F "collector[og_image]=@/Users/4dusers/Desktop/grid.gif" \
-F "collector[og_title]=creativesurvey" \
-F "collector[og_description]=sample" \
-F "collector[name]=公開設定2" \
-F "collector[is_ogp]=true"

レスポンス例
{
  "url": "https://creativesurvey.com/reply/unique_id",
  "created_at": "2014-04-29T23:09:23+09:00",
  "updated_at": "2014-05-28T12:46:25+09:00",
  "survey_id": 520,
  "id": 563,
  "is_activated": false,
  "og_image": "grid.gif",
  "og_description": "sample",
  "og_title": "creativesurvey",
  "answer_limit": null,
  "is_answer_limit": false,
  "due": null,
  "is_due": false,
  "password": null,
  "is_password": false,
  "name": "公開設定2",
  "description": null,
  "can_return": false,
  "is_mail": false,
  "is_compact": null,
  "ban_mobile": null,
  "disallow_duplicate_machine": false,
  "request_billboard": null,
  "is_result": false,
  "is_ogp": true
}


必須項目が入力されていない場合
{
  "name": [
    "を入力してください。"
  ]
}
~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
