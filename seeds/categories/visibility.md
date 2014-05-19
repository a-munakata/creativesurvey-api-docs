---

name: visibility
title: 表示ロジック

---

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[question](#question)|質問|
|has_many|[visibility_items](#visibility_item)|表示アイテム|
||[visibility_targets](#visibility_target)|表示ターゲット|

AND条件を追加、編集する場合は[表示アイテム(visibility_items)](#visibility_item)を、非表示にするアイテムを設定する場合は[表示ターゲット(visibility_targets)](#visibility_target)を参照ください。