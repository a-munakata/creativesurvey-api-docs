---

category_name: collector
title: 公開設定の更新
action: update

---

# 公開設定の更新

## 公開設定を更新します。

`PUT https://creativesurvey.com/api/v1/collectors/:id`

id _(必須)_:
: __integer__
: 対象となる公開設定のid

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

is_gtm:
: __boolean__ _(デフォルト: false)_
: trueを指定すると、Google Analyticsのトラッキングコードを埋め込みます。
: トラッキングコードはgtm_idで指定してください。

gtm_id:
: __string__ _(デフォルト: null)_
: Google AnalyticsのトラッキングID(ex: UA-xxxxxxxx-x)を指定します。
: is_gtmがtrueの際に、該当のトラッキングコードが埋め込まれます。

is_ip_restriction:
: __boolean__ _(デフォルト: false)_
: trueを指定すると、IP制限が有効になります。

ip_pattern:
: __string__ _(デフォルト: null)_
: 許可するIPアドレスを、正規表現を使って指定します。
: is_ip_restrictionがtrueの時、有効になります。

is_activated:
: __boolean__ _(デフォルト: false)_
: 公開 / 非公開の設定をします。
: trueを指定するとアンケートが公開されます。

disallow_custom_key:
: __boolean__ _(デフォルト: false)_
: カスタムキーを有効にするかどうか。
: falseを指定するとカスタムキーが有効になり、trueを指定するとカスタムキーが無効になります。

is_sync:
: __boolean__ _(デフォルト: false)_
: WEB HOOK設定を有効にするかどうか。
: trueを指定するとsync_urlのパスに、回答終了後に回答データをPOSTします。

sync_url:
: __string__ _(デフォルト: null)_
: WEB HOOKの対象のURLを指定します。

~~~

リクエスト例
$ curl -X PUT \
https://creativesurvey.com/api/v1/collectors/8587 \
-d "auth_token=sample_auth_token" \
-d "collector[name]=公開設定3" \
-d "collector[is_password]=true" \
-d "collector[password]=sample_pass" \
-d "collector[is_mail]=true" \
-d "collector[ban_mobile]=true"

レスポンス例
{
  "allow_billboard": false,
  "answer_limit": null,
  "ban_mobile": true,
  "can_return": false,
  "completed_panels_count": 0,
  "created_at": "2014-10-24T13:14:27+09:00",
  "description": null,
  "disallow_custom_key": false,
  "disallow_duplicate_in": null,
  "disallow_duplicate_machine": false,
  "disallow_free_enter": null,
  "due": null,
  "end_at": null,
  "export_at": null,
  "gtm_id": null,
  "id": 8587,
  "inbox_id": 6,
  "ip_pattern": null,
  "is_activated": false,
  "is_answer_limit": false,
  "is_compact": null,
  "is_due": false,
  "is_gtm": null,
  "is_ip_restriction": null,
  "is_mail": true,
  "is_ogp": null,
  "is_password": true,
  "is_result": false,
  "is_sync": null,
  "is_track_gps": null,
  "name": "公開設定3",
  "og_description": null,
  "og_image": {
    "url": null,
    "thumb": {
      "url": null
    },
    "square": {
      "url": null
    }
  },
  "og_title": null,
  "panels_count": 0,
  "password": "sample_pass",
  "request_billboard": null,
  "start_at": null,
  "survey_id": 7711,
  "sync_url": null,
  "unique_id": "eea1dac25d592d73ff56fbf73cc20b",
  "updated_at": "2014-10-31T12:02:12+09:00",
  "url": "https://mosson-book.local/ng/reply/eea1dac25d592d73ff56fbf73cc20b",
  "status": "edit",
  "embed": "<div style=\"position:relative;padding-bottom: 120%;height:0;\"><iframe style=\"position:absolute;top:0px;left:0px;width:100%;height:100%;\" src=\"https://mosson-book.local/ng/reply/eea1dac25d592d73ff56fbf73cc20b\"></iframe></div>"
}

~~~


~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
