# ID: RDD-ENT-2025-015

# エンティティ: システムメトリクス (SystemMetric)

## 概要

システムの稼働状況を示すメトリクス（CPU使用率、メモリ使用量など）を表現するエンティティです。

## 属性

| 属性名        | データ型 | 制約       | 説明                                                       |
| ------------- | -------- | ---------- | ---------------------------------------------------------- |
| `metric_id`   | UUID     | 主キー     | メトリクスの一意な識別子                                   |
| `timestamp`   | DateTime | 必須       | メトリクスが記録された日時                                 |
| `name`        | String   | 必須       | メトリクス名（例: 'cpu_usage', 'memory_usage', 'disk_io'） |
| `value`       | Float    | 必須       | メトリクスの値                                             |
| `unit`        | String   | オプション | メトリクスの単位（例: '%', 'GB', 'ops/sec'）               |
| `resource_id` | String   | オプション | 関連するリソースのID（サーバーIDなど）                     |

## 関係

- なし（独立したメトリクス記録エンティティ）

## 関連する機能要件

- [FR-038 (システム稼働状況監視・アラート機能)](../../functional-requirements/fr-038-system-monitoring-alert-function.md)
