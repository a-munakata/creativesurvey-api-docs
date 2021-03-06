
---

category_name: survey
title: アンケートの更新
action: update

---

# アンケートの更新

## 作成したアンケートを更新します。

`PUT https://creativesurvey.com/api/v1/surveys/:id`

id _(必須)_:
: __integer__
: 更新するアンケートのid

name _(必須)_:
: __string__
: アンケート名

password:
: __string__ _(デフォルト: null)_
: 結果を公開する際に求めるパスワード

tag_color:
: __string__ _(デフォルト: null)_
: アンケートのタグの色で、下記の色を指定することが出来ます。
: cyan
: purple
: red
: green
: pink
: yellow
: orange
: gray

is_public:
: __boolean__ _(デフォルト: false)_
: trueを返すとアンケートの結果を公開します。

active_segment_id:
: __integer__ _(デフォルト: null)_
: 適用するセグメントのid

is_gift:
: __boolean__ _(デフォルト: false)_
: gift_codeを有効にするかしないか。
: trueを指定すると、gift_codeが有効になります。

is_public_preview:
: __boolean__ _(デフォルト: false)_
: プレビューを公開するかどうか。
: trueを指定すると、プレビューが公開されます。

preview_password:
: __string__ _(デフォルト: null)_
: 公開プレビューに対してパスワードを設定します。
: この値を設定する事で、プレビューを公開した際、パスワードを要求するように出来ます。


~~~

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/surveys/7752 \
-d "auth_token=sample_auth_token" \
-d "survey[name]=sample_survey2" \
-d "survey[tag_color]=green"

レスポンス例
{
  "active_segment_id": null,
  "completed_panels_count": null,
  "created_at": "2014-10-31T11:26:45+09:00",
  "edit_count": 0,
  "gift_code": "e198822d2b3ecb1f8cd83aecdc64fa4df2eb1525",
  "gift_count": 0,
  "id": 7752,
  "inbox_id": 6,
  "is_deleted": false,
  "is_duplicating": false,
  "is_gift": true,
  "is_processing_statistic": null,
  "is_public": false,
  "is_public_preview": 1,
  "is_published": false,
  "name": "sample_survey2",
  "panels_count": null,
  "password": null,
  "preview_count": 0,
  "preview_password": "123",
  "public_token": "b34d6660fb606a2a3e053f0f1325a879af60bd5d",
  "published_at": null,
  "questions_count": 0,
  "statistic_make_at": null,
  "tag_color": "green",
  "updated_at": "2014-10-31T11:40:24+09:00",
  "status": "edit",
  "color": "apple",
  "result_url": "https://creativesurvey.com/public/results/b34d6660fb606a2a3e053f0f1325a879af60bd5d/summary",
  "preview_url": "https://creativesurvey.com/ng/surveys/7752/public/preview",
  "collectors": [
    {
      "allow_billboard": false,
      "answer_limit": null,
      "ban_mobile": null,
      "can_return": false,
      "completed_panels_count": 0,
      "created_at": "2014-10-31T11:26:46+09:00",
      "description": null,
      "disallow_custom_key": false,
      "disallow_duplicate_in": null,
      "disallow_duplicate_machine": false,
      "disallow_free_enter": null,
      "due": null,
      "end_at": null,
      "export_at": null,
      "gtm_id": null,
      "id": 8628,
      "inbox_id": 6,
      "ip_pattern": null,
      "is_activated": false,
      "is_answer_limit": false,
      "is_compact": null,
      "is_due": false,
      "is_gtm": null,
      "is_ip_restriction": null,
      "is_mail": false,
      "is_ogp": null,
      "is_password": false,
      "is_result": false,
      "is_sync": null,
      "is_track_gps": null,
      "name": "公開設定",
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
      "password": null,
      "request_billboard": null,
      "start_at": null,
      "survey_id": 7752,
      "sync_url": null,
      "unique_id": "c187d86d01bb0b2f4720ef6b6d95e8",
      "updated_at": "2014-10-31T11:26:46+09:00",
      "url": "https://creativesurvey.com/ng/reply/c187d86d01bb0b2f4720ef6b6d95e8",
      "status": "edit"
    }
  ]
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

