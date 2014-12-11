---

category_name: survey
title: アンケートのコピー
action: copy

---

# アンケートのコピー

## アンケートをコピーします。

`POST https://creativesurvey.com/api/v1/surveys/:id/copy`

id _(必須)_:
: __integer__
: コピーするアンケートのid

~~~

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys/7870/copy \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "active_segment_id": null,
  "completed_panels_count": null,
  "created_at": "2014-12-09T18:03:03+09:00",
  "edit_count": 0,
  "gift_code": "e9a51c644c8217b1bd00fdef61c0d0225f627d31",
  "gift_count": 0,
  "gift_level": null,
  "id": 7895,
  "inbox_id": 6,
  "is_deleted": false,
  "is_duplicating": false,
  "is_gift": false,
  "is_processing_statistic": null,
  "is_public": false,
  "is_public_preview": 0,
  "is_published": false,
  "last_panel_id": null,
  "name": "testのコピー",
  "panels_count": null,
  "password": null,
  "preview_count": 0,
  "preview_password": null,
  "public_token": "8b75e75e132eb6933e8ff5000b08de5a74fb4481",
  "published_at": "2014-11-27T12:27:51+09:00",
  "questions_count": 0,
  "statistic_make_at": null,
  "tag_color": "novel",
  "updated_at": "2014-12-09T18:03:05+09:00",
  "status": "edit",
  "color": "novel",
  "result_url": "https://mosson-book.local/public/results/8b75e75e132eb6933e8ff5000b08de5a74fb4481/summary",
  "preview_url": "https://mosson-book.local/ng/surveys/7895/public/preview",
  "collectors": [
    {
      "allow_billboard": false,
      "answer_limit": null,
      "ban_mobile": null,
      "can_return": false,
      "completed_panels_count": 0,
      "created_at": "2014-12-09T18:03:05+09:00",
      "description": null,
      "disallow_custom_key": false,
      "disallow_duplicate_in": null,
      "disallow_duplicate_machine": false,
      "disallow_free_enter": null,
      "due": null,
      "end_at": null,
      "export_at": null,
      "gtm_id": null,
      "id": 8774,
      "inbox_id": 6,
      "ip_pattern": null,
      "is_activated": false,
      "is_answer_limit": false,
      "is_compact": null,
      "is_due": false,
      "is_gtm": null,
      "is_ip_restriction": null,
      "is_mail": true,
      "is_ogp": null,
      "is_password": false,
      "is_result": false,
      "is_sync": null,
      "is_track_gps": null,
      "last_panel_id": null,
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
      "start_at": "2014-11-27T12:27:51+09:00",
      "survey_id": 7895,
      "sync_url": null,
      "unique_id": "ffe5a0dddd4c8a5eac192e28cfe64a",
      "updated_at": "2014-12-09T18:03:05+09:00",
      "url": "https://mosson-book.local/ng/reply/ffe5a0dddd4c8a5eac192e28cfe64a",
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

