# ID: RDD-ENT-2025-022

# エンティティ: 監査ログ (AuditLog)

## 概要

システム内の重要なイベント（ユーザー操作、データ変更など）を記録する監査ログを表現するエンティティです。

## 属性

| 属性名           | データ型 | 制約       | 説明                                                                 |
| ---------------- | -------- | ---------- | -------------------------------------------------------------------- |
| `audit_id`       | UUID     | 主キー     | 監査ログの一意な識別子                                               |
| `timestamp`      | DateTime | 必須       | イベントが発生した日時                                               |
| `user_id`        | UUID     | オプション | 操作を行ったユーザーのID                                             |
| `operation_type` | String   | 必須       | 操作の種類（例: 'LOGIN', 'LOGOUT', 'CREATE_TASK', 'UPDATE_PROJECT'） |
| `entity_type`    | String   | オプション | 操作対象のエンティティの種類（例: 'Task', 'Project', 'User'）        |
| `entity_id`      | UUID     | オプション | 操作対象のエンティティのID                                           |
| `details`        | JSON     | オプション | 操作の詳細（変更前後の値など）                                       |
| `ip_address`     | String   | オプション | 操作元のIPアドレス                                                   |
| `updated_at`     | DATETIME | 必須       | 更新日時                                                             |

## 関係

- `User` エンティティと多対1の関係（操作を行ったユーザー）

## 関連する機能要件

- [FR-047 (システム監査ログ管理機能)](../../functional-requirements/fr-047-system-audit-log-management-function.md)
