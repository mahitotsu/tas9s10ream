# ID: RDD-ENT-2025-014

# エンティティ: システムログ (SystemLog)

## 概要

システム内で発生する各種ログ（アプリケーションログ、認証ログ、エラーログ、操作ログなど）を表現するエンティティです。

## 属性

| 属性名       | データ型 | 制約       | 説明                                                            |
| ------------ | -------- | ---------- | --------------------------------------------------------------- |
| `log_id`     | UUID     | 主キー     | ログの一意な識別子                                              |
| `timestamp`  | DateTime | 必須       | ログが記録された日時                                            |
| `level`      | String   | 必須       | ログレベル（例: 'INFO', 'WARN', 'ERROR', 'DEBUG'）              |
| `source`     | String   | 必須       | ログの発生源（例: 'Application', 'Authentication', 'Database'） |
| `message`    | Text     | 必須       | ログメッセージの内容                                            |
| `user_id`    | UUID     | オプション | 関連するユーザーのID（操作ログの場合）                          |
| `request_id` | UUID     | オプション | 関連するリクエストのID                                          |
| `ip_address` | String   | オプション | ログ発生元のIPアドレス                                          |
| `details`    | JSON     | オプション | その他の詳細情報（スタックトレースなど）                        |

## 関係

- なし（独立したログ記録エンティティ）

## 関連する機能要件

- [FR-039 (システムログ管理機能)](../../functional-requirements/fr-039-system-log-management-function.md)
