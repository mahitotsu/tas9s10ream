# ID: RDD-ENT-2025-016

# エンティティ: システムアラート (SystemAlert)

## 概要

システム稼働状況監視機能によって生成されるアラートを表現するエンティティです。

## 属性

| 属性名              | データ型 | 制約       | 説明                                                                        |
| ------------------- | -------- | ---------- | --------------------------------------------------------------------------- |
| `alert_id`          | UUID     | 主キー     | アラートの一意な識別子                                                      |
| `timestamp`         | DateTime | 必須       | アラートが生成された日時                                                    |
| `type`              | String   | 必須       | アラートの種類（例: 'CPU_HIGH', 'MEMORY_LOW', 'APP_ERROR', 'COST_ANOMALY'） |
| `message`           | Text     | 必須       | アラートメッセージの内容                                                    |
| `severity`          | String   | 必須       | 重要度（例: 'CRITICAL', 'HIGH', 'MEDIUM', 'LOW'）                           |
| `status`            | String   | 必須       | アラートのステータス（例: 'ACTIVE', 'RESOLVED', 'ACKNOWLEDGED'）            |
| `related_log_id`    | UUID     | オプション | 関連するログのID                                                            |
| `related_metric_id` | UUID     | オプション | 関連するメトリクスのID                                                      |
| `resolved_at`       | DateTime | オプション | アラートが解決された日時                                                    |
| `resolved_by`       | UUID     | 外部キー   | アラートを解決したユーザーのID                                              |

## 関係

- `User` エンティティと多対1の関係（アラートを解決したユーザー）
- `SystemLog` エンティティと多対1の関係（関連するログ）
- `SystemMetric` エンティティと多対1の関係（関連するメトリクス）

## 関連する機能要件

- [FR-038 (システム稼働状況監視・アラート機能)](../../functional-requirements/fr-038-system-monitoring-alert-function.md)
