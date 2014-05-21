---

category_name: design
title: デザインの取得
method: show

---

# デザインの取得

## デザインを個別で取得します。

design_id _(必須)_:
: __integer__
: 取得するデザインのid

~~~
定義
GET https://creativesurvey.com/api/v1/designs/:design_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/designs/515 \
-u "auth_token=YourAuthToken":

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
