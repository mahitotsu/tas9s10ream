# ID

ENT-2025-012

# エンティティ: ProjectProgressSnapshot

## 概要

プロジェクトの特定の時点における進捗状況のスナップショットを表します。リアルタイム進捗ダッシュボードやレポート生成のために使用されます。

### 属性 (カラム)

- `snapshot_id`: VARCHAR(255), PK, スナップショットの一意の識別子
- `project_id`: VARCHAR(255), FK, 対象プロジェクトのID
  (projects.project_id を参照)
- `timestamp`: DATETIME, スナップショットが取得された日時
- `overall_progress_percentage`: DECIMAL(5,2), 全体進捗率
- `completed_tasks_count`: INT, 完了タスク数
- `remaining_tasks_count`: INT, 残タスク数
- `bottleneck_tasks`:
  TEXT, オプション, ボトルネックタスクのリスト（JSON形式など）
- `delay_risk_tasks`: TEXT, オプション, 遅延リスクタスクのリスト（JSON形式など）
- `resource_allocation_data`:
  TEXT, オプション, リソース配分データ（JSON形式など）
- `budget_consumption_data`: TEXT, オプション, 予算消費データ（JSON形式など）
- `plan_deviation_alerts`: TEXT, オプション, 計画乖離アラート（JSON形式など）

### リレーションシップ

- `PROJECT`: 多対1, スナップショットは1つのプロジェクトに紐付けられる

### 関連する機能要件

- [FR-014 (リアルタイム進捗データ収集機能)](../../requirements/functional-requirements/fr-014-realtime-progress-data-collection-function.md)
- [FR-015 (リアルタイム進捗データ分析機能)](../../requirements/functional-requirements/fr-015-realtime-progress-data-analysis-function.md)
- [FR-016 (進捗ダッシュボード表示機能)](../../requirements/functional-requirements/fr-016-progress-dashboard-display-function.md)

### 備考

なし
