---

category_name: design
title: デザインの更新
action: update

---

# デザインの更新

## デザインを更新します。

`PUT https://creativesurvey.com/api/v1/surveys/:id/design/`

id _(必須)_:
: __integer__
: 更新する対象のデザインを含むアンケートのID

theme_id:
: __integer__ _(デフォルト: null)_
: テーマのid
: テーマ一覧は[こちら](#theme)から取得してください。

main_color:
: __string__ _(デフォルト: null)_
: デザインのメインカラーを指定します。

sub_color:
: __string__ _(デフォルト: null)_
: デザインのサブカラーを指定します。

is_progress:
: __boolean__ _(デフォルト: true)_
: プログレスバーを表示するかどうかを指定します。

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

transition_id:
: __integer__ _(デフォルト: null)_
: 画面移動時のトランジションIDを指定します。
: トランジションIDは、[こちら](#transition)より取得してください。


~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/surveys/7894/design \
-d "auth_token=sample_auth_token" \
-d "design[layout_position]=left" \
-d "design[theme_id]=7" \
-d "design[is_blur]=false" \
-d "design[background_color]=#fff" \
-d "design[is_progress]=false" \
-d "design[text_align]=left"

レスポンス例
{
  "background_color": "#fff",
  "background_position_x": "left",
  "background_position_y": "top",
  "background_repeat": true,
  "background_size": "cover",
  "created_at": "2014-11-17T14:18:12+09:00",
  "creative_id": null,
  "custom_class": "theme-orange",
  "custom_css": null,
  "font_id": 6,
  "font_size": 22,
  "font_source": "",
  "google_font_id": 39,
  "id": 7843,
  "inbox_id": 6,
  "insole_brightness": 0.5,
  "is_background_image": null,
  "is_blur": false,
  "is_font": true,
  "is_google_font": true,
  "is_progress": false,
  "layout_position": "left",
  "main_color": null,
  "published_at": null,
  "published_source": "#character-collection {\n\tfont-family:  'Impact',  'UD新ゴ B',' UD Shin Go Bold', sans-serif;\n}\n\n.answer-background > .before,\nbody > .main > .inner.answer-background > .before,\nbody > .main > .inner > .workbench.answer-background > .before,\nbody > .main > .inner > .workbench .content.answer-background > .before,\n.answer-background .answer-background-insole,\nbody > .main > .inner.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background .answer-background-insole\n{\n\tcontent: \"\";\n\tposition: fixed !important;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\n\tbackground-image: none;\n\n\t\n\tbackground-color: #fff;\n\t\n\n\tbackground-position: top left;\n\tbackground-repeat: repeat;\n\tbackground-size: cover;\n\tbackground-attachment: scroll;\n}\n\n.answer-background.edit > .before,\nbody > .main > .inner.answer-background.edit > .before,\nbody > .main > .inner > .workbench.answer-background.edit > .before,\nbody > .main > .inner > .workbench .content.answer-background.edit > .before,\n.answer-background.edit .answer-background-insole,\nbody > .main > .inner.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.edit .answer-background-insole,\n.answer-background.abs > .before,\nbody > .main > .inner.answer-background.abs > .before,\nbody > .main > .inner > .workbench.answer-background.abs > .before,\nbody > .main > .inner > .workbench .content.answer-background.abs > .before,\n.answer-background.abs .answer-background-insole,\nbody > .main > .inner.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.abs .answer-background-insole\n{\n\tposition: absolute !important;\n\ttop: 0px;\n\tleft: 0px;\n\tright: 0px;\n\tbottom: 0px;\n\tmargin-top: 0px;\n\tmargin-left: 0px;\n\tmargin-right: 0px;\n\tmargin-bottom: 0px;\n\n\n\twidth: auto;\n\theight: auto;\n}\n\n.answer-theme {\n\n\tcolor:#333;\n\tborder-color: #333;\n\tfont-size:22px;\n\tfont-family: 'Impact',  'UD新ゴ B',' UD Shin Go Bold', sans-serif;\n}\n\n.answer-item {\n\tfont-size:22px;\n}\n\nhtml.answer-background > .after, body.answer-background > .after, .answer-background > .after, .answer-background-insole > .inner {\n\tcontent: \"\";\n\tposition: fixed !important;\n\tdisplay: block;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\tclear: both;\n\tbackground-color: transparent;\n  background: transparent top left repeat\\9;\n\n}\n\nhtml.answer-background.edit:after,\nbody.answer-background.edit:after,\n.answer-background.edit:after,\n.answer-background.edit .answer-background-insole > .inner,\nhtml.answer-background.abs:after,\nbody.answer-background.abs:after,\n.answer-background.abs:after,\n.answer-background.abs .answer-background-insole > .inner {\n\tposition: absolute !important;\n}\n\nhtml.answer-background.edit:after, body.answer-background.edit:after, .answer-background.edit:after {\n\tdisplay: none;\n}\n\n.answer-container > .inner {\n\n\t\n\t\tmargin: 0 auto 0 0;\n\t\n}\n\n.answer-container .markdown em,\n.answer-container .markdown strong,\n.answer-container .markdown .bold\n{\n\tcolor: #;\n\tborder-color: #;\n}\n\n.answer-container .answer-flex-block .answer-item {\n\tfont-size: 22px;\n}",
  "strong_color": null,
  "sub_color": null,
  "survey_id": 7849,
  "text_align": "left",
  "text_color": null,
  "theme_id": 7,
  "theme_path": null,
  "transition_id": 6,
  "updated_at": "2014-11-17T15:48:20+09:00",
  "is_preset": true,
  "theme": {
    "author": "taguchi",
    "background_color": "",
    "background_size": "100% auto",
    "created_at": "2013-10-01T18:52:11+09:00",
    "creative_id": 47,
    "custom_class": "theme-black",
    "description": "",
    "font_id": null,
    "google_font_id": null,
    "id": 7,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/image/7/photo_black.jpg"
    },
    "is_background": true,
    "is_font": false,
    "is_google_font": false,
    "layout_position": "",
    "name": "Photo Black",
    "ng_source": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/ng_source/7/black.css"
    },
    "order_index": null,
    "source": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/source/7/photo_black.css"
    },
    "square_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/7/photo_black.jpg",
      "square": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/7/square_photo_black.jpg"
      },
      "rect": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/7/rect_photo_black.jpg"
      }
    },
    "strong_color": "",
    "text_align": "",
    "text_color": "",
    "theme_category_id": 1,
    "thumb_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/thumb_image/7/photo_black_s.jpg"
    },
    "updated_at": "2014-10-27T11:23:54+09:00"
  },
  "font": {
    "created_at": "2013-10-01T18:51:25+09:00",
    "english_name": "UD Shin Go Bold",
    "font_category_id": null,
    "font_size": 14,
    "id": 6,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/image/6/UD-Shin-Go-Bold.png",
      "s_thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/image/6/s_thumb_UD-Shin-Go-Bold.png"
      }
    },
    "list_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/list_image/6/UD-Shin-Go-Bold.png"
    },
    "list_on_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/list_on_image/6/UD-Shin-Go-Bold_on.png"
    },
    "name": "UD新ゴ B",
    "order_index": 1,
    "source": " 'UD新ゴ B',' UD Shin Go Bold', sans-serif",
    "thumb_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/font/thumb_image/6/UD-Shin-Go-Bold.png"
    },
    "updated_at": "2014-10-21T01:06:29+09:00"
  },
  "google_font": {
    "created_at": "2013-10-01T18:51:54+09:00",
    "google_font_category_id": null,
    "id": 39,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/image/39/Impact.png",
      "s_thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/image/39/s_thumb_Impact.png"
      }
    },
    "import": " @import url(https://fonts.googleapis.com/css?family=Oxygen);",
    "list_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/list_image/39/Impact.png"
    },
    "list_on_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/list_on_image/39/Impact_on.png"
    },
    "name": "Impact",
    "order_index": 0,
    "source": " 'Impact'",
    "thumb_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/google_font/thumb_image/39/Impact.png"
    },
    "updated_at": "2014-10-21T11:37:02+09:00"
  },
  "css": {
    "created_at": "2014-11-17T14:18:12+09:00",
    "design_id": 7843,
    "id": 7823,
    "inbox_id": 6,
    "source": "span{color:gray}",
    "updated_at": "2014-11-17T15:32:51+09:00"
  },
  "transition": {
    "created_at": "2014-10-01T23:24:30+09:00",
    "id": 6,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/transition/image/6/slide.png",
      "thumb": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/transition/image/6/thumb_slide.png"
      }
    },
    "label": "スライド",
    "name": "transition-slide",
    "order_index": 5,
    "updated_at": "2014-10-10T15:30:45+09:00"
  }
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
