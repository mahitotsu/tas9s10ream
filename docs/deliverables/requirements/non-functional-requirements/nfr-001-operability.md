# ID: RDD-NFR-2025-001

# 非機能要件: 運用性

## カテゴリ

運用

### 概要

システムが安定して稼働し、問題発生時に迅速に対応できる運用体制を確立するための要件を定義します。これは、日々の運用を効率化し、予期せぬ事態にも迅速かつ効果的に対応するために不可欠です。

### 詳細

- システムの稼働状況は24時間365日監視可能であること。
- ログは適切に記録され、問題発生時の原因究明に利用できること。
- 定期的なメンテナンス（バックアップ、パッチ適用など）が計画的に実施できること。
- 障害発生時には、影響範囲を特定し、迅速に復旧できる手順が確立されていること。

### 測定方法

- 監視ツールの導入と設定状況
- ログの保存期間とアクセス性
- メンテナンス計画の有無と実施状況
- 障害発生時の対応時間（MTTR）

### 関連する機能要件

- [FR-014 (リアルタイム進捗データ収集機能)](../functional-requirements/fr-014-realtime-progress-data-collection-function.md)
- [FR-015 (リアルタイム進捗データ分析機能)](../functional-requirements/fr-015-realtime-progress-data-analysis-function.md)
- [FR-016 (進捗ダッシュボード表示機能)](../functional-requirements/fr-016-progress-dashboard-display-function.md)

### 関連する業務フロー

- BF-008 (システム運用フロー) ※新規作成を想定

### 関連するユースケース

- [UC-012 (リアルタイム進捗ダッシュボードでプロジェクト状況を把握する)](../use-cases/uc-012-realtime-progress-dashboard.md)

### 関連する画面

- [SCR-015 (リアルタイム進捗ダッシュボード画面)](../screens/scr-015-realtime-progress-dashboard-screen.md)
