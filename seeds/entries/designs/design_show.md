---

category_name: design
title: デザインの取得
action: show

---

# デザインの取得

## デザインを個別で取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/design`

id _(必須)_:
: __integer__
: 取得するデザインを含むアンケートのID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7849/design \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "background_color": "#f6f6f6",
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
  "is_blur": null,
  "is_font": true,
  "is_google_font": true,
  "is_progress": true,
  "layout_position": "center",
  "main_color": null,
  "published_at": null,
  "published_source": "#character-collection {\n\tfont-family:  'Impact',  'UD新ゴ B',' UD Shin Go Bold', sans-serif;\n}\n\n.answer-background > .before,\nbody > .main > .inner.answer-background > .before,\nbody > .main > .inner > .workbench.answer-background > .before,\nbody > .main > .inner > .workbench .content.answer-background > .before,\n.answer-background .answer-background-insole,\nbody > .main > .inner.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background .answer-background-insole\n{\n\tcontent: \"\";\n\tposition: fixed !important;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\n\tbackground-image: none;\n\n\t\n\tbackground-color: #f6f6f6;\n\t\n\n\tbackground-position: top left;\n\tbackground-repeat: repeat;\n\tbackground-size: cover;\n\tbackground-attachment: scroll;\n}\n\n.answer-background.edit > .before,\nbody > .main > .inner.answer-background.edit > .before,\nbody > .main > .inner > .workbench.answer-background.edit > .before,\nbody > .main > .inner > .workbench .content.answer-background.edit > .before,\n.answer-background.edit .answer-background-insole,\nbody > .main > .inner.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.edit .answer-background-insole,\n.answer-background.abs > .before,\nbody > .main > .inner.answer-background.abs > .before,\nbody > .main > .inner > .workbench.answer-background.abs > .before,\nbody > .main > .inner > .workbench .content.answer-background.abs > .before,\n.answer-background.abs .answer-background-insole,\nbody > .main > .inner.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.abs .answer-background-insole\n{\n\tposition: absolute !important;\n\ttop: 0px;\n\tleft: 0px;\n\tright: 0px;\n\tbottom: 0px;\n\tmargin-top: 0px;\n\tmargin-left: 0px;\n\tmargin-right: 0px;\n\tmargin-bottom: 0px;\n\n\n\twidth: auto;\n\theight: auto;\n}\n\n.answer-theme {\n\n\tcolor:#333;\n\tborder-color: #333;\n\tfont-size:22px;\n\tfont-family: 'Impact',  'UD新ゴ B',' UD Shin Go Bold', sans-serif;\n}\n\n.answer-item {\n\tfont-size:22px;\n}\n\nhtml.answer-background > .after, body.answer-background > .after, .answer-background > .after, .answer-background-insole > .inner {\n\tcontent: \"\";\n\tposition: fixed !important;\n\tdisplay: block;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\tclear: both;\n\tbackground-color: transparent;\n  background: transparent top left repeat\\9;\n\n}\n\nhtml.answer-background.edit:after,\nbody.answer-background.edit:after,\n.answer-background.edit:after,\n.answer-background.edit .answer-background-insole > .inner,\nhtml.answer-background.abs:after,\nbody.answer-background.abs:after,\n.answer-background.abs:after,\n.answer-background.abs .answer-background-insole > .inner {\n\tposition: absolute !important;\n}\n\nhtml.answer-background.edit:after, body.answer-background.edit:after, .answer-background.edit:after {\n\tdisplay: none;\n}\n\n.answer-container > .inner {\n\n\t\n\t\tmargin: 0 auto;\n\t\n}\n\n.answer-container .markdown em,\n.answer-container .markdown strong,\n.answer-container .markdown .bold\n{\n\tcolor: #;\n\tborder-color: #;\n}\n\n.answer-container .answer-flex-block .answer-item {\n\tfont-size: 22px;\n}",
  "strong_color": null,
  "sub_color": null,
  "survey_id": 7849,
  "text_align": "center",
  "text_color": null,
  "theme_id": 5,
  "theme_path": null,
  "transition_id": 6,
  "updated_at": "2014-11-17T15:34:00+09:00",
  "is_preset": true,
  "theme": {
    "author": "ookoshi",
    "background_color": "#f6f6f6",
    "background_size": "auto",
    "created_at": "2013-10-01T18:52:11+09:00",
    "creative_id": null,
    "custom_class": "theme-orange",
    "description": "",
    "font_id": null,
    "google_font_id": 81,
    "id": 5,
    "image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/image/5/orange.jpg"
    },
    "is_background": false,
    "is_font": false,
    "is_google_font": true,
    "layout_position": "",
    "name": "orange",
    "ng_source": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/ng_source/5/orange.css"
    },
    "order_index": null,
    "source": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/source/5/flat-solid-warm.css"
    },
    "square_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/5/orange.jpg",
      "square": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/5/square_orange.jpg"
      },
      "rect": {
        "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/square_image/5/rect_orange.jpg"
      }
    },
    "strong_color": "#000000",
    "text_align": "",
    "text_color": "#333333",
    "theme_category_id": 1,
    "thumb_image": {
      "url": "https://storage-creativesurvey.s3.amazonaws.com/uploads/development/theme/thumb_image/5/orange_s.jpg"
    },
    "updated_at": "2014-10-27T11:23:50+09:00"
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
