---

category_name: panel_reply
title: 回答者の作成
action: show

---

# 回答者の作成

## 回答者を作成します。


`GET https://creativesurvey.com/api/v1/collectors/:id/reply/panels`

id _(必須)_:
: __integer__
: 公開設定ID

##### このメソッドを実行すると回答者が作成され、基本的な情報が保存されます。(ブラウザ情報、カスタムキー、回答開始時間等)この回答者をアップデート[panel#update](#panel_update)する事で、質問に回答する事が出来ます。


~~~

リクエスト例
$ curl -X GET https://creativesurvey.com//api/v1/collectors/8778/reply/panels \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "browser": "curl",
  "browser_version": "7.30.0",
  "collector_id": 8778,
  "color": "",
  "complete_at": null,
  "created_at": "2014-12-11T00:08:35+09:00",
  "current_index": 0,
  "current_question_id": null,
  "custom_key": "1f8fed52e19b4230e6209ca69e44a51fbe8f5a89",
  "id": 8650,
  "ip_address": null,
  "is_complete": false,
  "is_invalid": false,
  "is_mobile": false,
  "is_preview": null,
  "is_screen_out": false,
  "is_valid": true,
  "message": null,
  "order": [
    [
      5897
    ],
    [
      5898
    ],
    [
      5901
    ],
    [
      5900
    ],
    [
      5896
    ]
  ],
  "os_browser": " : curl",
  "platform": null,
  "query_string": null,
  "reply_time": 0,
  "resolution": null,
  "start_at": "2014-12-11T00:08:35+09:00",
  "survey_id": 7899,
  "updated_at": "2014-12-11T00:08:35+09:00",
  "uuid": null,
  "variables": [],
  "design": {
    "id": 7893,
    "inbox_id": 6,
    "survey_id": 7899,
    "theme_id": null,
    "font_id": null,
    "creative_id": null,
    "google_font_id": null,
    "background_position_x": "left",
    "background_position_y": "top",
    "background_color": "#f6f6f6",
    "background_repeat": true,
    "font_size": 22,
    "font_source": "",
    "text_align": "left",
    "text_color": null,
    "strong_color": null,
    "layout_position": "center",
    "insole_brightness": 0.5,
    "theme_path": null,
    "published_source": "#character-collection {\n\tfont-family: 'MetroNovaPro', 'ヒラギノ角ゴ Pro W3','Hiragino Kaku Gothic Pro','メイリオ',Meiryo,'ＭＳ Ｐゴシック',sans-serif;\n}\n\n.answer-background > .before,\nbody > .main > .inner.answer-background > .before,\nbody > .main > .inner > .workbench.answer-background > .before,\nbody > .main > .inner > .workbench .content.answer-background > .before,\n.answer-background .answer-background-insole,\nbody > .main > .inner.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background .answer-background-insole\n{\n\tcontent: \"\";\n\tposition: fixed !important;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\n\tbackground-image: none;\n\n\t\n\tbackground-color: #f6f6f6;\n\t\n\n\tbackground-position: top left;\n\tbackground-repeat: repeat;\n\tbackground-size: cover;\n\tbackground-attachment: scroll;\n}\n\n.answer-background.edit > .before,\nbody > .main > .inner.answer-background.edit > .before,\nbody > .main > .inner > .workbench.answer-background.edit > .before,\nbody > .main > .inner > .workbench .content.answer-background.edit > .before,\n.answer-background.edit .answer-background-insole,\nbody > .main > .inner.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.edit .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.edit .answer-background-insole,\n.answer-background.abs > .before,\nbody > .main > .inner.answer-background.abs > .before,\nbody > .main > .inner > .workbench.answer-background.abs > .before,\nbody > .main > .inner > .workbench .content.answer-background.abs > .before,\n.answer-background.abs .answer-background-insole,\nbody > .main > .inner.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench.answer-background.abs .answer-background-insole,\nbody > .main > .inner > .workbench .content.answer-background.abs .answer-background-insole\n{\n\tposition: absolute !important;\n\ttop: 0px;\n\tleft: 0px;\n\tright: 0px;\n\tbottom: 0px;\n\tmargin-top: 0px;\n\tmargin-left: 0px;\n\tmargin-right: 0px;\n\tmargin-bottom: 0px;\n\n\n\twidth: auto;\n\theight: auto;\n}\n\n.answer-theme {\n\n\tcolor:#333;\n\tborder-color: #333;\n\tfont-size:22px;\n\tfont-family:'MetroNovaPro', 'ヒラギノ角ゴ Pro W3','Hiragino Kaku Gothic Pro','メイリオ',Meiryo,'ＭＳ Ｐゴシック',sans-serif;\n}\n\n.answer-item {\n\tfont-size:22px;\n}\n\nhtml.answer-background > .after, body.answer-background > .after, .answer-background > .after, .answer-background-insole > .inner {\n\tcontent: \"\";\n\tposition: fixed !important;\n\tdisplay: block;\n\tpointer-events: none;\n\ttop: 0;\n\tleft: 0;\n\twidth: 100%;\n\theight: 100%;\n\tclear: both;\n\tbackground-color: transparent;\n  background: transparent top left repeat\\9;\n\n}\n\nhtml.answer-background.edit:after,\nbody.answer-background.edit:after,\n.answer-background.edit:after,\n.answer-background.edit .answer-background-insole > .inner,\nhtml.answer-background.abs:after,\nbody.answer-background.abs:after,\n.answer-background.abs:after,\n.answer-background.abs .answer-background-insole > .inner {\n\tposition: absolute !important;\n}\n\nhtml.answer-background.edit:after, body.answer-background.edit:after, .answer-background.edit:after {\n\tdisplay: none;\n}\n\n.answer-container > .inner {\n\n\t\n\t\tmargin: 0 auto;\n\t\n}\n\n.answer-container .markdown em,\n.answer-container .markdown strong,\n.answer-container .markdown .bold\n{\n\tcolor: #;\n\tborder-color: #;\n}\n\n.answer-container .answer-flex-block .answer-item {\n\tfont-size: 22px;\n}",
    "created_at": "2014-12-10T16:15:35+09:00",
    "updated_at": "2014-12-10T16:15:35+09:00",
    "background_size": "cover",
    "is_background_image": null,
    "is_font": null,
    "is_google_font": null,
    "published_at": null,
    "custom_class": null,
    "is_blur": null,
    "custom_css": null,
    "main_color": null,
    "sub_color": null,
    "is_progress": true,
    "transition_id": 6,
    "google_font": null,
    "style": {
      "custom_rule": "html,body{font-size: 22px} .text b, .text em, .text strong{ color: inherit !important; }\n",
      "custom_class": "",
      "transition_name": "transition-slide",
      "layout": "center",
      "align": "left",
      "stage": {
        "backgroundColor": "#f6f6f6",
        "backgroundImage": "none",
        "backgroundPosition": "top left",
        "backgroundRepeat": "repeat",
        "backgroundSize": "cover"
      },
      "stage_inner": {
        "background": "rgba(0, 0, 0, 0.0)",
        "fontFamily": "'MetroNovaPro', 'ヒラギノ角ゴ Pro W3','Hiragino Kaku Gothic Pro','メイリオ',Meiryo,'ＭＳ Ｐゴシック',sans-serif",
        "fontSize": "22px",
        "textAlign": "left"
      },
      "text": {
        "fontFamily": "'MetroNovaPro', 'ヒラギノ角ゴ Pro W3','Hiragino Kaku Gothic Pro','メイリオ',Meiryo,'ＭＳ Ｐゴシック',sans-serif",
        "fontSize": "22px",
        "textAlign": "left"
      }
    },
    "theme_href": null
  },
  "characters": "selct xABriz未設定次へ拡大を閉じる",
  "is_powered": false,
  "current_answers": {
    "5897": {
      "11001": {
        "0": [
          {
            "answer_item_id": 11001,
            "answer_type": 2,
            "created_at": "2014-12-11T00:08:36+09:00",
            "duration": null,
            "height": null,
            "id": 70452,
            "impression": null,
            "is_answered": false,
            "is_timeout": false,
            "panel_id": 8650,
            "question_id": 5897,
            "rank": null,
            "sub_item_id": 0,
            "updated_at": "2014-12-11T00:08:36+09:00",
            "value": null,
            "width": null,
            "x": null,
            "y": null
          }
        ]
      },
      "11002": {
        "0": [
          {
            "answer_item_id": 11002,
            "answer_type": 2,
            "created_at": "2014-12-11T00:08:36+09:00",
            "duration": null,
            "height": null,
            "id": 70453,
            "impression": null,
            "is_answered": false,
            "is_timeout": false,
            "panel_id": 8650,
            "question_id": 5897,
            "rank": null,
            "sub_item_id": 0,
            "updated_at": "2014-12-11T00:08:36+09:00",
            "value": null,
            "width": null,
            "x": null,
            "y": null
          }
        ]
      }
    }
  },
  "current_questions": [
    {
      "answer_type": 2,
      "col_width": null,
      "created_at": "2014-12-10T16:15:58+09:00",
      "description": null,
      "fix_last": null,
      "fix_last_col": null,
      "fix_last_row": null,
      "id": 5897,
      "in_random_range": null,
      "inbox_id": 6,
      "is_back": null,
      "is_check_and_go": null,
      "is_comment_required": null,
      "is_connect": null,
      "is_description": null,
      "is_expand": false,
      "is_image": null,
      "is_impression": true,
      "is_invert_matrix": null,
      "is_logic": null,
      "is_powered": false,
      "is_range": false,
      "is_redirect": null,
      "is_required": null,
      "is_reset": null,
      "is_screen_out": null,
      "is_shuffle": false,
      "is_shuffle_col": null,
      "is_shuffle_row": null,
      "is_single_select": true,
      "is_sns": null,
      "is_timer": null,
      "launcher_string": "",
      "order_index": 0,
      "placeholder": "",
      "question_type": 1,
      "questionnaire_id": 7883,
      "range_max": 1,
      "range_min": null,
      "redirect_url": null,
      "rendered_sentence": "select text",
      "sentence": "",
      "timer_destination_id": null,
      "timer_value": 5,
      "updated_at": "2014-12-10T16:16:19+09:00",
      "answer_type_name": "テキスト選択",
      "any_logic": false,
      "any_visibility": false,
      "answer_items": [
        {
          "answer_type": 2,
          "created_at": "2014-12-10T16:15:58+09:00",
          "id": 11001,
          "inbox_id": 6,
          "is_impression": true,
          "is_multiline": false,
          "is_reject": null,
          "is_required": false,
          "max_value": null,
          "min_value": null,
          "order_index": 0,
          "placeholder": "",
          "question_id": 5897,
          "sentence": "A",
          "updated_at": "2014-12-10T16:16:18+09:00",
          "val": 0.5,
          "validation_pattern": "",
          "validation_type": null,
          "sub_items": [],
          "creative_chain": {
            "attachable_id": 11001,
            "attachable_type": "AnswerItem",
            "created_at": "2014-12-10T16:15:58+09:00",
            "creative_id": null,
            "id": 33921,
            "inbox_id": 6,
            "updated_at": "2014-12-10T16:15:58+09:00"
          }
        },
        {
          "answer_type": 2,
          "created_at": "2014-12-10T16:15:58+09:00",
          "id": 11002,
          "inbox_id": 6,
          "is_impression": true,
          "is_multiline": false,
          "is_reject": null,
          "is_required": false,
          "max_value": null,
          "min_value": null,
          "order_index": 1,
          "placeholder": "",
          "question_id": 5897,
          "sentence": "B",
          "updated_at": "2014-12-10T16:16:18+09:00",
          "val": 0.5,
          "validation_pattern": "",
          "validation_type": null,
          "sub_items": [],
          "creative_chain": {
            "attachable_id": 11002,
            "attachable_type": "AnswerItem",
            "created_at": "2014-12-10T16:15:58+09:00",
            "creative_id": null,
            "id": 33922,
            "inbox_id": 6,
            "updated_at": "2014-12-10T16:15:58+09:00"
          }
        }
      ],
      "sub_items": [],
      "creative_chain": {
        "attachable_id": 5897,
        "attachable_type": "Question",
        "created_at": "2014-12-10T16:15:58+09:00",
        "creative_id": null,
        "id": 33923,
        "inbox_id": 6,
        "updated_at": "2014-12-10T16:15:58+09:00"
      }
    }
  ],
  "visibilities": []
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

