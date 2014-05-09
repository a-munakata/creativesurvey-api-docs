---

category_name: collector
title: 公開設定の更新
priority: 996

---

# 公開設定の更新

## 公開設定を更新します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

collector_id*:
: __integer__
: 対象となる公開設定のid

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

sync_url:
: __string__ _(デフォルト: null)_
: WebHookで使用するURLを指定します。

~~~
定義
PUT https://creativesurvey.com/api/v1/collectors/:collector_id

リクエスト例
$ curl -X PUT \
https://creativesurvey.com/api/v1/collectors/547 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "collector[name]=公開設定3" \
-d "collector[is_password]=true" \
-d "collector[password]=sample_pass" \
-d "collector[is_mail]=true" \
-d "collector[ban_mobile]=true"

レスポンス例
{
  "updated_at": "2014-05-08T19:23:28+09:00",
  "is_compact": null,
  "is_answer_limit": false,
  "is_activated": true,
  "inbox_id": 6,
  "id": 547,
  "export_at": null,
  "end_at": null,
  "due": null,
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": true,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-05-08T19:14:47+09:00",
  "description": null,
  "disallow_duplicate_machine": false,
  "is_due": false,
  "is_mail": true,
  "is_ogp": true,
  "is_password": true,
  "is_result": false,
  "name": "公開設定3",
  "og_description": "sample",
  "og_image": {
    "square": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/547/square_red.gif"
    },
    "thumb": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/547/thumb_red.gif"
    },
    "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/collector/og_image/547/red.gif"
  },
  "og_title": "creativesurvey",
  "panels_count": 0,
  "password": "sample_pass",
  "request_billboard": null,
  "start_at": "2014-05-08T19:21:55+09:00",
  "survey_id": 520,
  "sync_url": null,
  "unique_id": "0a7a83043678b983d1c8b73038bc3a"
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

　
　
