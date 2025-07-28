# ID: RDD-NFR-2025-012

# 非機能要件: 移植性

## カテゴリ

移植性

### 概要

システムが異なる環境（OS、データベース、インフラストラクチャ基盤など）へ容易に移行できる能力に関する要件を定義します。これは、将来的な技術進化やビジネス要件の変化に対応し、システムの柔軟性と持続可能性を確保するために重要です。

### 詳細

- 特定のOSやデータベースに強く依存しない汎用的な技術を採用すること。
- コンテナ技術（例: Docker）を利用し、環境依存性を低減すること。
- クラウドプロバイダーに依存しないインフラストラクチャコード（例: Terraform,
  Pulumi）を採用すること。

### 測定方法

- 環境移行にかかる時間とコスト
- 環境依存性の評価

### 関連する機能要件

- [FR-022 (既存ツール連携設定機能)](../functional-requirements/fr-022-external-tool-integration-settings-function.md)

### 関連する業務フロー

- [BF-006 (既存ツール連携フロー)](../business-flows/bf-006-existing-tool-integration-flow.md)

### 関連するユースケース

- [UC-006 (既存ツールからタスクをインポートする)](../use-cases/uc-006-import-tasks-from-existing-tool.md)

### 関連する画面

- [SCR-016 (既存ツール連携詳細設定画面)](../screens/scr-016-external-tool-integration-settings-screen.md)
