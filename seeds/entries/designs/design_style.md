---

category_name: design
title: スタイルの取得
action: style

---

# スタイルの取得

## アンケートに設定されているスタイルを取得します。

`GET https://creativesurvey.com/api/v1/surveys/:id/design/style`

id _(必須)_:
: __integer__
: 取得するデザインを含むアンケートのID

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/surveys/7849/design/style \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "custom_rule": "html,body{font-size: 30px} .text b, .text em, .text strong{ color: inherit !important; }\n",
  "custom_class": "theme-orange theme-black",
  "transition_name": "transition-slide",
  "font": " 'UD新ゴ B',' UD Shin Go Bold', sans-serif",
  "google_font": "Impact",
  "layout": "left",
  "align": "left",
  "stage": {
    "backgroundColor": "#fff",
    "backgroundImage": "none",
    "backgroundPosition": "top left",
    "backgroundRepeat": "repeat",
    "backgroundSize": "cover"
  },
  "stage_inner": {
    "background": "rgba(0, 0, 0, 0.0)",
    "fontFamily": " 'Impact',  'UD新ゴ B',' UD Shin Go Bold', sans-serif, 'MetroNovaPro', 'ヒラギノ角ゴ Pro W3','Hiragino Kaku Gothic Pro','メイリオ',Meiryo,'ＭＳ Ｐゴシック',sans-serif",
    "fontSize": "30px",
    "textAlign": "left"
  },
  "text": {
    "fontFamily": " 'Impact',  'UD新ゴ B',' UD Shin Go Bold', sans-serif, 'MetroNovaPro', 'ヒラギノ角ゴ Pro W3','Hiragino Kaku Gothic Pro','メイリオ',Meiryo,'ＭＳ Ｐゴシック',sans-serif",
    "fontSize": "30px",
    "textAlign": "left"
  }
}

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
