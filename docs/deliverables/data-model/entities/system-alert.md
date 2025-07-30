# ID

ENT-2025-016

# エンティティ: SystemAlert

## 概要

システム内で発生した異常や閾値超過などのアラート情報を記録するエンティティです。システム管理者が問題を認識し、対応するために利用されます。

### 属性 (カラム)

- `alert_id`: VARCHAR(255), PK, アラートの一意の識別子
- `timestamp`: DATETIME, アラートが発生した日時
- `type`: VARCHAR(100), アラートの種類（例: `CPU_HIGH`, `DISK_FULL`,
  `ERROR_RATE_EXCEEDED`）
- `message`: TEXT, アラートメッセージの内容
- `severity`: VARCHAR(50), アラートの重要度（例: `CRITICAL`, `HIGH`, `MEDIUM`,
  `LOW`）
- `status`: VARCHAR(50), アラートのステータス（例: `ACTIVE`, `RESOLVED`,
  `ACKNOWLEDGED`）
- `related_log_id`: VARCHAR(255), FK, オプション, 関連するログのID
  (system_logs.log_id を参照)
- `related_metric_id`: VARCHAR(255), FK, オプション, 関連するメトリクスのID
  (system_metrics.metric_id を参照)
- `resolved_at`: DATETIME, オプション, アラートが解決された日時
- `resolved_by`: VARCHAR(255), FK, オプション, アラートを解決したユーザーのID
  (users.user_id を参照)
- `created_at`: DATETIME, 作成日時
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `SYSTEM_LOG`: 多対1, オプション, アラートがログに関連する場合
- `SYSTEM_METRIC`: 多対1, オプション, アラートがメトリクスに関連する場合
- `USER`: 多対1, オプション, アラートを解決したユーザー

### 関連する機能要件

- FR-038 (システム監視・アラート機能)

### 備考

なし
