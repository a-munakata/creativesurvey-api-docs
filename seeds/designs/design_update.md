---

category_name: design
title: デザインの更新
priority: 999

---

# デザインの更新

## デザインの更新

auth_token*:
: __string__
: 認証時に必要なトークンです。

design_id*:
: __integer__
: 取得するデザインのid

design[theme_id]:
: __integer__
: テーマのid

design[text_color]:
: __string__
: 文字色

design[text_align]:
: __string__
: テキストの寄せ位置

design[strong_color]:
: __string__
: 強調文字色

design[layout_position]:
: __string__
: コンテンツの寄せ位置

design[is_blur]:
: __boolean__
: 背景ぼかし

design[background_size]:
: __string__
: 背景の大きさ

design[background_repeat]:
: __boolean__
: 背景の繰り返し

design[background_position_y]:
: __string__
: 背景の縦位置

design[background_position_x]:
: __string__
: 背景の横位置

design[background_color]:
: __string__
: 背景色

design[custom_css]:
: __string__ _(デフォルト: null)_
: カスタムCSS

design[font_size]:
: __integer__ _(デフォルト: 14)_
: フォントサイズ

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
  "theme_path": null,
  "theme_id": 7,
  "text_color": "#dadada",
  "text_align": "left",
  "survey_id": 520,
  "strong_color": "#e19d9d",
  "published_source": "#character-collection {\n\tfont-family:  'Droid Sans',  '新丸ゴ R','Shin Maru Go Regular', sans-serif;\n}\n\n.answer-background > .before,\nbody > .main > .inner.answer-background > .before,\nbody > .main > .inner > .workbench.answer-background > .before,\nbody > .main > .inner > .workbench .content.answer-background > .before,\n.answer-background .answer-background-insole,\nbody > .main > .inner.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background .answer-background-insole\n{\n\tcontent: \"\";\n\tposition: fixed !important;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\n\tbackground-image: url(https://storage-creativesurvey.s3.amazonaws.com/uploads/development/creative/image/558/08.jpg);\n\n\t\n\tbackground-color: #fff;\n\t\n\n\tbackground-position: center center;\n\tbackground-repeat: repeat;\n\tbackground-size: auto;\n\tbackground-attachment: scroll;\n}\n\n.answer-background.edit > .before,\nbody > .main > .inner.answer-background.edit > .before,\nbody > .main > .inner > .workbench.answer-background.edit > .before,\nbody > .main > .inner > .workbench .content.answer-background.edit > .before,\n.answer-background.edit .answer-background-insole,\nbody > .main > .inner.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.edit .answer-background-insole,\n.answer-background.abs > .before,\nbody > .main > .inner.answer-background.abs > .before,\nbody > .main > .inner > .workbench.answer-background.abs > .before,\nbody > .main > .inner > .workbench .content.answer-background.abs > .before,\n.answer-background.abs .answer-background-insole,\nbody > .main > .inner.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.abs .answer-background-insole\n{\n\tposition: absolute !important;\n\ttop: 0px;\n\tleft: 0px;\n\tright: 0px;\n\tbottom: 0px;\n\tmargin-top: 0px;\n\tmargin-left: 0px;\n\tmargin-right: 0px;\n\tmargin-bottom: 0px;\n\n\n\twidth: auto;\n\theight: auto;\n}\n\n.answer-theme {\n\tcolor:#dadada;\n\tborder-color: #dadada;\n\tfont-size:14px;\n\tfont-family: 'Droid Sans',  '新丸ゴ R','Shin Maru Go Regular', sans-serif;\n}\n\n.answer-item {\n\tfont-size:14px;\n}\n\nhtml.answer-background > .after, body.answer-background > .after, .answer-background > .after, .answer-background-insole > .inner {\n\tcontent: \"\";\n\tposition: fixed !important;\n\tdisplay: block;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\tclear: both;\n\tbackground-color: rgba(255,255,255,0.5);\n  background: transparent url(/assets/black80.png) top left repeat\\9;\n\n}\n\nhtml.answer-background.edit:after,\nbody.answer-background.edit:after,\n.answer-background.edit:after,\n.answer-background.edit .answer-background-insole > .inner,\nhtml.answer-background.abs:after,\nbody.answer-background.abs:after,\n.answer-background.abs:after,\n.answer-background.abs .answer-background-insole > .inner {\n\tposition: absolute !important;\n}\n\nhtml.answer-background.edit:after, body.answer-background.edit:after, .answer-background.edit:after {\n\tdisplay: none;\n}\n\n.answer-container > .inner {\n\n\t\n\t\tmargin: 0 auto 0 0;\n\t\n}\n\n.answer-container .markdown em,\n.answer-container .markdown strong,\n.answer-container .markdown .bold\n{\n\n\tcolor: #e19d9d;\n\tborder-color: #e19d9d;\n}\n\n.answer-container .answer-flex-block .answer-item {\n\tfont-size: 14px;\n}",
  "published_at": null,
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
  "font_source": "",
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
