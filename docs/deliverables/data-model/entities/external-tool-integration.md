# ID

ENT-2025-013

# エンティティ: ExternalToolIntegration

## 概要

Tas9s10reamと外部のプロジェクト管理ツールやタスク管理ツールとの連携設定を表します。認証情報、同期設定、データマッピングルールなどを管理します。

### 属性 (カラム)

- `integration_id`: VARCHAR(255), PK, 連携設定の一意の識別子
- `user_id`: VARCHAR(255), FK, 設定を行ったユーザーのID (users.user_id を参照)
- `tool_name`: VARCHAR(100), 連携する外部ツールの名称（例: `Jira`, `Asana`,
  `Trello`）
- `auth_info`: TEXT, 認証情報（APIキー、OAuthトークンなど、暗号化して保存）
- `sync_direction`: VARCHAR(50), 同期方向（例: `bidirectional`,
  `external_to_tas9s10ream`, `tas9s10ream_to_external`）
- `sync_frequency`: VARCHAR(50), 同期頻度（例: `realtime`, `hourly`, `daily`）
- `data_mapping_rules`: TEXT, データマッピングルール（JSON形式など）
- `last_sync_at`: DATETIME, オプション, 最終同期日時

### リレーションシップ

- `USER`: 多対1, 連携設定は1人のユーザーによって行われる

### 関連する機能要件

- [FR-022 (既存ツール連携設定機能)](../../requirements/functional-requirements/fr-022-external-tool-integration-settings-function.md)
- [FR-023 (タスクインポート機能)](../../requirements/functional-requirements/fr-023-task-import-function.md)
- [FR-024 (タスクエクスポート機能)](../../requirements/functional-requirements/fr-024-task-export-function.md)

### 備考

なし
