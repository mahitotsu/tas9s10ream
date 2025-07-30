# ID: RDD-ENT-2025-018

# エンティティ: コストデータ (CostData)

## 概要

クラウドサービスの利用費に関するデータを表現するエンティティです。

## 属性

| 属性名         | データ型 | 制約       | 説明                                    |
| -------------- | -------- | ---------- | --------------------------------------- |
| `cost_id`      | UUID     | 主キー     | コストデータの一意な識別子              |
| `date`         | Date     | 必須       | コストが発生した日付                    |
| `service_name` | String   | 必須       | サービス名（例: 'EC2', 'S3', 'Lambda'） |
| `amount`       | Decimal  | 必須       | 費用                                    |
| `currency`     | String   | 必須       | 通貨（例: 'USD', 'JPY'）                |
| `resource_id`  | String   | オプション | 関連するリソースのID                    |
| `project_id`   | UUID     | オプション | 関連するプロジェクトのID                |
| `created_at`   | DATETIME | 必須       | 作成日時                                |
| `updated_at`   | DATETIME | 必須       | 更新日時                                |

## 関係

- `Project` エンティティと多対1の関係（関連するプロジェクト）

## 関連する機能要件

- [FR-043 (コスト異常検知・アラート機能)](../../functional-requirements/fr-043-cost-anomaly-detection-alert-function.md)
