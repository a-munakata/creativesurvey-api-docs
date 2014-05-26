---

category_name: design
title: デザインの更新
method: update

---

# デザインの更新

## デザインを更新します。

`PUT https://creativesurvey.com/api/v1/designs/:id`

id _(必須)_:
: __integer__
: 更新する対象のデザインのid

id:
: __integer__
: デザインのid

theme_id:
: __integer__ _(デフォルト: null)_
: テーマのid
: テーマ一覧は[こちら](#theme)から取得してください。

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
: 和文フォント一覧は[こちら](#font)から取得してください。

is_google_font:
: __boolean__ _(デフォルト: false)_
: 欧文フォントを適用するかどうか
: trueを指定するとgoogle_font_idで指定した和文フォントが適用されます。
: 欧文フォント一覧は[こちら](#google_font)から取得してください。

google_font_id:
: __integer__ _(デフォルト: null)_
: 適用する欧文フォントのid

insole_brightness:
: __float__ _(デフォルト: 0.5)_
: 背景の明るさを0~1の範囲で指定します。


~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/designs/512 \
-d "auth_token=YourAuthToken" \
-d "design[layout_position]=left" \
-d "design[theme_id]=7" \
-d "design[is_blur]=false" \
-d "design[background_color]=#fff" \
-d "design[text_align]=left"

レスポンス例
{
  "survey_id": 520,
  "id": 515,
  "custom_css": null,
  "custom_class": "",
  "insole_brightness": 0.75,
  "layout_position": "left",
  "strong_color": "#e19d9d",
  "text_color": "#dadada",
  "text_align": "left",
  "background_size": "auto",
  "background_color": "#fff",
  "background_repeat": true,
  "background_position_y": "center",
  "background_position_x": "center",
  "creative_id": 558,
  "theme_path": null,
  "theme_id": 7,
  "is_background_image": true,
  "is_blur": false,
  "is_google_font": true,
  "google_font_id": 29,
  "font_id": 83,
  "is_font": true,
  "font_size": 14,
  "font_source": ""
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
