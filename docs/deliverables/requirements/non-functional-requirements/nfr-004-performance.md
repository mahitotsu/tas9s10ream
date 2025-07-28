# ID: RDD-NFR-2025-004

# 非機能要件: パフォーマンス

## カテゴリ

性能

### 概要

システムがユーザーの操作に対して、許容できる応答時間で処理を完了し、効率的なリソース利用を実現するための要件を定義します。これは、ユーザー体験の質と運用効率に直結します。

### 詳細

- 画面表示は、最大3秒以内に完了すること。
- 検索処理は、最大5秒以内に完了すること。
- レポート生成処理は、最大10秒以内に完了すること。
- 同時接続ユーザー数1000人まで、上記の応答時間を維持すること。

### 測定方法

- 負荷テストによる応答時間の測定
- データベースのクエリ実行時間
- ネットワーク遅延の測定

### 関連する機能要件

- [FR-001 (タスク収集機能)](../functional-requirements/fr-001-task-collection-function.md)
- [FR-002 (タスク処理機能)](../functional-requirements/fr-002-task-processing-function.md)
- [FR-003 (タスク整理機能)](../functional-requirements/fr-003-task-organization-function.md)
- [FR-004 (タスク実行機能)](../functional-requirements/fr-004-task-execution-function.md)
- [FR-030 (タスク検索機能)](../functional-requirements/fr-030-task-search-function.md)
- [FR-031 (タスクフィルタリング機能)](../functional-requirements/fr-031-task-filtering-function.md)
- [FR-032 (進捗レポート出力機能)](../functional-requirements/fr-032-progress-report-function.md)

### 関連する業務フロー

- [BF-001 (タスク収集フロー)](../business-flows/bf-001-task-collection-flow.md)
- [BF-002 (タスク処理フロー)](../business-flows/bf-002-task-processing-flow.md)
- [BF-003 (タスク整理フロー)](../business-flows/bf-003-task-organization-flow.md)
- [BF-005 (タスク実行フロー)](../business-flows/bf-005-task-execution-flow.md)

### 関連するユースケース

- [UC-001 (タスクをインボックスに記録する)](../use-cases/uc-001-record-task-to-inbox.md)
- [UC-002 (インボックスのタスクを処理する)](../use-cases/uc-002-process-inbox-task.md)
- [UC-005 (次の行動リストからタスクを実行する)](../use-cases/uc-005-execute-next-action-task.md)
- [UC-015 (タスクを検索・フィルタリングする)](../use-cases/uc-015-search-filter-tasks.md)
- [UC-016 (レポートを生成・閲覧する)](../use-cases/uc-016-generate-view-reports.md)

### 関連する画面

- [SCR-002 (インボックス画面)](../screens/scr-002-inbox-screen.md)
- [SCR-004 (次の行動リスト画面)](../screens/scr-004-next-action-list-screen.md)
- [SCR-008 (検索画面)](../screens/scr-008-search-screen.md)
- [SCR-011 (レポート画面)](../screens/scr-011-report-screen.md)
