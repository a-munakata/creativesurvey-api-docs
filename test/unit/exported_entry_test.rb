# encoding: utf-8

require 'test_helper'


class EntryTest < ActiveSupport::TestCase


  data("回答補助項目の作成", ["200", `curl -X GET http://localhost:9292/api/v1/questions/2081/sub_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questions/2081/logics -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("置き換え変数設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questionnaires/826/questionnaire_variables -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アイテムの作成", ["200", `curl -X POST http://localhost:9292/api/v1/logics/291/logic_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questionnaires/826/questions -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アクションの作成", ["200", `curl -X GET http://localhost:9292/api/v1/logics/291/logic_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ターゲットの作成", ["200", `curl -X POST http://localhost:9292/api/v1/visibilities/163/visibility_targets -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("ランダム設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questionnaires/826/randomizers -d "auth_token=sxHNTa6w2hNxfzq7dHQo&randomizer[step_num]=5" -w "%{http_code}"`])

  data("フィルターの作成", ["200", `curl -X POST http://localhost:9292/api/v1/segments/327/segment_filters -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定とセグメントの関連の作成　(公開設定から)", ["200", `curl -X POST http://localhost:9292/api/v1/collectors/1130/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("アンケートの作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys -d "auth_token=sxHNTa6w2hNxfzq7dHQo&survey[name]=new_survey" -w "%{http_code}"`])

  data("表示ロジックの作成", ["200", `curl -X POST http://localhost:9292/api/v1/questions/2081/visibilities -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定とセグメントの関連の作成　(セグメント設定から)", ["200", `curl -X POST http://localhost:9292/api/v1/segments/327/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys/835/creatives -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys/835/collectors -d "auth_token=sxHNTa6w2hNxfzq7dHQo&collector[name]=new_collector" -w "%{http_code}"`])

  data("表示アイテムの作成", ["200", `curl -X POST http://localhost:9292/api/v1/visibilities/163/visibility_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答項目の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questions/2081/answer_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("セグメント設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys/835/segments -d "auth_token=sxHNTa6w2hNxfzq7dHQo&segment[name]=new_segment" -w "%{http_code}"`])

  data("公開設定の公開", ["200", `curl -X POST http://localhost:9292/api/v1/collectors/1130/publish -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定の公開中止", ["200", `curl -X POST http://localhost:9292/api/v1/collectors/1130/abort -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/panels/:id/answers -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("アンケート一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ロジック一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/2081/visibilities -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/835/collectors -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("テーマ一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/themes -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答項目一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/2081/answer_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示アイテム一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/163/visibility_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定とセグメントの関連一覧の取得　(セグメント設定から)", ["200", `curl -X GET http://localhost:9292/api/v1/segments/327/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/835/creatives -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("セグメント設定一覧を取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/835/segments -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答者一覧の取得(セグメント毎)", ["200", `curl -X GET http://localhost:9292/api/v1/segments/327/panels -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("フィルター一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/segments/327/segment_filters -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定とセグメントの関連一覧の取得　(公開設定から)", ["200", `curl -X GET http://localhost:9292/api/v1/collectors/1130/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("ランダム設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/826/randomizers -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の関連一覧の取得 (回答補助項目から)", ["200", `curl -X GET http://localhost:9292/api/v1/sub_items/:id/creative_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("和文フォント一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/fonts -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("欧文フォント一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/google_fonts -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ターゲット一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/163/visibility_targets -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/826/questions -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の関連一覧の取得 (回答項目から)", ["200", `curl -X GET http://localhost:9292/api/v1/answer_items/4870/creative_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問表一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/835/questionnaires -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答者一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/835/panels -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("置き換え変数設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/826/questionnaire_variables -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アイテム一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/logics/291/logic_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の関連一覧の取得　(質問から)", ["200", `curl -X GET http://localhost:9292/api/v1/questions/2081/creative_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問順序一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/826/page_order_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答補助項目一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/2081/sub_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/2081/logics -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の関連の更新　(質問から)", ["200", `curl -X PUT http://localhost:9292/api/v1/questions/creative_chains/2081 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ターゲットの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/visibility_targets/263 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/logics/291 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アイテムの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/logic_items/200 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の関連の更新　(回答項目から)", ["200", `curl -X PUT http://localhost:9292/api/v1/answer_items/creative_chains/4870 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問順序の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/page_order_items/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の関連の更新　(回答補助項目から)", ["200", `curl -X PUT http://localhost:9292/api/v1/sub_items/creative_chains/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示アイテムの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/visibility_items/194 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ロジックの更新", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/163 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/collectors/1130 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&collector[name]=new_collector" -w "%{http_code}"`])

  data("最終画面の変更", ["200", `curl -X PUT http://localhost:9292/api/v1/egressions/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("アンケートの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/surveys/835 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&survey[name]=new_survey" -w "%{http_code}"`])

  data("回答補助項目の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/sub_items/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("置き換え変数設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/questionnaire_variables/274 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答項目の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/answer_items/4870 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("セグメント設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/segments/327 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&segment[name]=new_segment" -w "%{http_code}"`])

  data("画像の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/creatives/928 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("フィルターの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/segment_filters/147 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("デザインの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/designs/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("ランダム設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/randomizers/178 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&randomizer[step_num]=5" -w "%{http_code}"`])

  data("質問の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/questions/2081 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定とセグメントの関連の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/collector_segment_chains/193 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/logics/291 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("最終画面の取得", ["200", `curl -X GET http://localhost:9292/api/v1/egressions/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("ランダム設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/randomizers/178 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/2081 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ターゲットの取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibility_targets/263 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問順序の取得", ["200", `curl -X GET http://localhost:9292/api/v1/page_order_items/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("デザインの取得", ["200", `curl -X GET http://localhost:9292/api/v1/designs/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("フィルターの取得", ["200", `curl -X GET http://localhost:9292/api/v1/segment_filters/147 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答項目の取得", ["200", `curl -X GET http://localhost:9292/api/v1/answer_items/4870 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アクションの取得", ["200", `curl -X GET http://localhost:9292/api/v1/logic_actions/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示アイテムの取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibility_items/194 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の取得", ["200", `curl -X GET http://localhost:9292/api/v1/creatives/928 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("セグメント設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/segments/327 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問表の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/826 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アクションの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/logic_actions/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答者の取得", ["200", `curl -X GET http://localhost:9292/api/v1/panels/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ロジックの取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/163 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答補助項目の取得", ["200", `curl -X GET http://localhost:9292/api/v1/sub_items/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("置き換え変数設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaire_variables/274 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/collectors/1130 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アイテムの取得", ["200", `curl -X GET http://localhost:9292/api/v1/logic_items/200 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定とセグメントの関連の取得", ["200", `curl -X GET http://localhost:9292/api/v1/collector_segment_chains/193 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("アンケートの取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/835 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("アンケートの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/surveys/835 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("置き換え変数設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/questionnaire_variables/274 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アイテムの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/logic_items/200 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ロジックの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/visibilities/163 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定とセグメントの関連の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/collector_segment_chains/193 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答項目の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/answer_items/4870 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("回答補助項目の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/sub_items/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("公開設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/collectors/1130 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示アイテムの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/visibility_items/194 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("画像の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/creatives/928 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("セグメント設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/segments/327 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/logics/291 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("質問の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/questions/2081 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("表示ターゲットの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/visibility_targets/263 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("フィルターの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/segment_filters/147 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("分岐アクションの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/logic_actions/:id -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  data("ランダム設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/randomizers/178 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])


  def test_survey_response_code(data)
    expected, response = data
    assert_equal expected, response.match(/[0-9]{3}$/).to_s, "#{response}"
  end
end
