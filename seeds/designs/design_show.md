---

category_name: design
title: デザインの取得
priority: 999

---

# デザインの取得

## デザインを個別で取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

design_id*:
: __integer__
: 取得するデザインのid


~~~
定義
GET https://creativesurvey.com/api/v1/designs/:design_id

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/designs/512 \
-d "auth_token=KRXJUq7yxjT18Vqxxxxx"

レスポンス例
{
  "updated_at": "2014-04-23T12:42:43+09:00",
  "theme_id": 9,
  "text_color": "#333333",
  "text_align": "center",
  "survey_id": 520,
  "strong_color": "#000000",
  "layout_position": "center",
  "is_google_font": null,
  "is_font": null,
  "is_blur": true,
  "is_background_image": true,
  "custom_class": "",
  "creative_id": 558,
  "created_at": "2014-04-23T12:41:58+09:00",
  "background_size": "auto",
  "background_repeat": true,
  "background_position_y": "center",
  "background_position_x": "center",
  "background_color": "#396f9a",
  "custom_css": null,
  "font_id": null,
  "font_size": 14,
  "google_font_id": null,
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
