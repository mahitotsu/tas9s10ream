# ID

ENT-2025-015

# エンティティ: SystemMetric

## 概要

システムのパフォーマンスやリソース使用状況に関するメトリクスデータを記録するエンティティです。システムの状態監視、パフォーマンス分析、キャパシティプランニングなどに利用されます。

### 属性 (カラム)

- `metric_id`: VARCHAR(255), PK, メトリクスの一意の識別子
- `timestamp`: DATETIME, メトリクスが記録された日時
- `name`: VARCHAR(100), メトリクス名（例: `cpu_usage`, `memory_utilization`,
  `request_count`）
- `value`: FLOAT, メトリクスの値
- `unit`: VARCHAR(50), メトリクスの単位（例: `percent`, `bytes`, `count`）
- `resource_id`: VARCHAR(255), オプション, 関連するリソースのID（例:
  `server-01`, `db-instance-02`）
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `SYSTEM_ALERT`: 1対多, メトリクスがシステムアラートのトリガーとなる場合

### 関連する機能要件

- FR-038 (システム監視・アラート機能)

### 備考

なし
