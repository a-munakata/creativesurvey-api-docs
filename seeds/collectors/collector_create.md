---

category_name: collector
title: 公開設定の作成
priority: 998

---

# 公開設定の作成

## 公開設定の作成

auth_token*:
: __string__
: 認証時に必要なトークンです。

survey_id*:
: __integer__
: 対象となるアンケートのid

name*:
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

is_activated:
: __boolean__ _(デフォルト: false)_
: 公開されているかどうか

inbox_id:
: __integer__
: 該当の公開設定を持つインボックスのid

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

is_password:
: __boolean__ _(デフォルト: false)_
: trueを指定するとパスワードを有効にします。

password:
: __string__ _(デフォルト: null)_
: パスワードを指定します。is_passwordがtrueの時に有効になります。

request_billboard:
: __boolean__ _(デフォルト: false)_
: trueを指定すると、ビルボードへの掲載を希望します。

sync_url:
: __string__ _(デフォルト: null)_
: WebHookで使用するURLを指定します。

~~~
定義
POST https://creativesurvey.com/api/v1/surveys/:survey_id/collectors

リクエスト例
$ curl -X POST \
https://creativesurvey.com/api/v1/surveys/520/collectors \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "collector[name]=公開設定2"

レスポンス例
{
  "updated_at": "2014-04-23T17:09:29+09:00",
  "is_answer_limit": false,
  "is_activated": false,
  "inbox_id": 6,
  "id": 529,
  "due": null,
  "answer_limit": null,
  "ban_mobile": false,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-04-23T17:09:29+09:00",
  "disallow_duplicate_machine": false,
  "is_due": false,
  "is_mail": false,
  "is_ogp": false,
  "is_password": false,
  "name": "公開設定2",
  "og_description": null,
  "og_image": {
    "square": {
      "url": null
    },
    "thumb": {
      "url": null
    },
    "url": null
  },
  "og_title": null,
  "panels_count": 0,
  "password": null,
  "request_billboard": null,
  "survey_id": 520,
  "sync_url": null
}

リソースが存在しない場合
{
  "message": "resource not found"
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

　
　
