---

category_name: design
title: デザインの更新
priority: 998

---

# デザインの更新

## デザインを更新します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

design_id*:
: __integer__
: 更新する対象のデザインのid

inbox_id:
: __integer__
: 該当のデザインを含むインボックスのid

id:
: __integer__
: デザインのid

theme_id:
: __integer__ _(デフォルト: null)_
: テーマのid

text_color:
: __string__ _(デフォルト: "#333")_
: 文字色

text_align:
: __string__ _(デフォルト: "left")_
: テキストの寄せ位置
: "left", "center", "right"から選択します。

strong_color:
: __string__ _(デフォルト: "")_
: 強調文字色

layout_position:
: __string__ _(デフォルト: "center")_
: コンテンツの寄せ位置
: "left", "center", "right"から選択します。

is_blur:
: __boolean__ _(デフォルト: null)_ 
: 背景ぼかし

background_size:
: __string__ _(デフォルト: cover)_
: 背景の大きさ
: "cover"(画面いっぱいに背景を広げる), "auto"(並べて表示), "false"(左上に元画像のサイズで表示)から選択します。

background_repeat:
: __boolean__ _(デフォルト: true)_
: 背景の繰り返し

background_position_y:
: __string__ _(デフォルト: "top")_
: 背景の縦位置
: "top", "center", "bottom"から選択します。

background_position_x:
: __string__ _(デフォルト: "left")_
: 背景の横位置
: "left", "center", "right"から選択します。

background_color:
: __string__ _(デフォルト: "#f6f6f6")_
: 背景色

is_background_image:
: __boolean__ _(デフォルト: null)_
: trueを指定すると背景を画像にします。

creative_id:
: __integer__ _(デフォルト: null)_
: 背景にする画像のid

custom_class:
: __string__ _(デフォルト: "")_
: 適用するカスタマイズされたクラスを指定します。

custom_css:
: __string__ _(デフォルト: null)_
: カスタムCSS

font_size:
: __integer__ _(デフォルト: 14)_
: フォントサイズ

is_font:
: __boolean__ _(デフォルト: false)_
: 和文フォントを適用するかどうか
: trueを指定するとfont_idで指定した和文フォントが適用されます。

font_id:
: __integer__ _(デフォルト: null)_
: 適用する和文フォントのid

is_google_font:
: __boolean__ _(デフォルト: false)_
: 欧文フォントを適用するかどうか
: trueを指定するとgoogle_font_idで指定した和文フォントが適用されます。

google_font_id:
: __integer__ _(デフォルト: null)_
: 適用する欧文フォントのid

insole_brightness:
: __float__ _(デフォルト: 0.5)_
: 背景の明るさを0~1の範囲で指定します。


~~~
定義
PUT https://creativesurvey.com/api/v1/designs/:design_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/designs/512 \
-d "auth_token=KRXJUq7yxjT18Vqxxxxx" \
-d "design[layout_position]=left" \
-d "design[theme_id]=7" \
-d "design[is_blur]=false" \
-d "design[background_color]=#fff" \
-d "design[text_align]=left"

レスポンス例
{
  "updated_at": "2014-04-23T12:58:13+09:00",
  "theme_id": 7,
  "text_color": "#dadada",
  "text_align": "left",
  "survey_id": 520,
  "strong_color": "#e19d9d",
  "layout_position": "left",
  "is_google_font": true,
  "is_font": true,
  "is_blur": false,
  "is_background_image": true,
  "custom_class": "",
  "creative_id": 558,
  "created_at": "2014-04-23T12:41:58+09:00",
  "background_size": "auto",
  "background_repeat": true,
  "background_position_y": "center",
  "background_position_x": "center",
  "background_color": "#fff",
  "custom_css": null,
  "font_id": 83,
  "font_size": 14,
  "google_font_id": 29,
  "id": 515,
  "inbox_id": 6,
  "insole_brightness": 0.75
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
